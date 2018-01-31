component extends="testbox.system.BaseSpec" {

	variables.supportedFunctions = structKeyList(getFunctionList());

	function run(testResults, testBox) {
		dataDir = ExpandPath("../data/en");
		files = directoryList(dataDir, false, "array");

		describe("Test Examples", function() {
			it("should match the expected result", function() {
				for (filePath in files) {
					var json = fileRead(filePath);
					var isItJson = isJSON(json);
					var fileName = getFileFromPath(filePath);
					if (isItJson && find("""code""",json) && !listFind("queryexecute.json,entityload.json", fileName)) {
						json = deserializeJSON(json);
						if (json.keyExists("examples") && isArray(json.examples) && arrayLen(json.examples)) {
							if (structKeyExists(server, "lucee") AND NOT structKeyExists(json.engines, "lucee")) {
								//skip this test because it does not run on lucee, ACF specific tag or function
								continue;
							}
              				var idx=0;
							for (var e in json.examples) {
                				idx++;
								if (e.keyExists("code") && e.keyExists("result") && Len(e.result)) {
									if (json.type == "function" && !listFindNoCase(variables.supportedFunctions, json.name)) {
										//skip because it is not supported by current engine
										continue;
									}
									if (!find("<cf", e.code) && !find(";", e.code) && !find("{", e.code)) {
										var actualResult = "";
										try {
											actualResult = evaluate(e.code);
										} catch(any ex) {
											if (ex.message == "Syntax Error, invalid Expression [" & e.code & "]") {
												if (reFindNoCase("[""'][a-z0-9 ]+[""']\.[a-z]+\(", e.code)) {
													//Lucee does not like "String".memberFunction()
													//in evaluate but it is valid otherwise
													continue;
												}
											}
											actualResult = "EXCEPTION in example #idx#: #ex.message#";
										}

										//workaround bug: listRemoveDuplicates adds trailing comma in lucee
										//https://luceeserver.atlassian.net/browse/LDEV-387
										if (json.name == "listRemoveDuplicates" && server.keyExists("lucee")) {
											if (right(actualResult, 1) == ",") {
												e.result = e.result & ",";
											}
										}
										if (isBoolean(e.result) && !isNumeric(e.result)) {
											expect(isBoolean(actualResult)).toBeTrue("#fileName# example result is:#e.result# but evaluated to:#actualResult#");
											if (e.result == true) {
												expect(actualResult).toBeTrue("#fileName# example result is:#e.result# but evaluated to:#actualResult#");
											} else {
												expect(actualResult).toBeFalse("#fileName# example result is:#e.result# but evaluated to:#actualResult#");
											}
										} else {
											if (isNumeric(e.result) && len(e.result) > 10) {
												//there are some rounding differences to account for between ACF and Lucee, see results of acos(0.3) for example
												expect(numberFormat(actualResult, "_.________")).toBe(numberFormat(e.result, "_.________"), "#fileName# example result is:#e.result# but evaluated to:#actualResult#");
											} else if (isJSON(e.result)) {
												//ACF and Lucee may serialize numbers or booleans differently so try to normalize it
												expect(deserializeJSON(actualResult)).toBe(deserializeJSON(e.result), "#fileName# example result is:#e.result# but evaluated to:#actualResult#");

											} else {
												expect(actualResult).toBe(e.result, "#fileName# example result is:#e.result# but evaluated to:#actualResult#");	
											}
											
										}

									}
								}
							}
						}
					}

				}

			});
		});
	}
}