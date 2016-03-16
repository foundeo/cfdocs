component extends="testbox.system.BaseSpec" {
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
							for (var e in json.examples) {
								if (e.keyExists("code") && e.keyExists("result") && Len(e.result)) {
									if (!find("<cf", e.code) && !find(";", e.code) && !find("{", e.code)) {
										var actualResult = "";
										try {
											actualResult = evaluate(e.code);
										} catch(any ex) {
											actualResult = "EXCEPTION: #ex.message#";
										}
										
										//workaround bug: listRemoveDuplicates adds trailing comma in lucee
										//https://luceeserver.atlassian.net/browse/LDEV-387
										if (json.name == "listRemoveDuplicates" && server.keyExists("lucee")) {
											if (right(actualResult, 1) == ",") {
												e.result = e.result & ",";
											}
										}

										expect(actualResult).toBe(e.result, "#fileName# example result is:#e.result# but evaluated to:#actualResult#");
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