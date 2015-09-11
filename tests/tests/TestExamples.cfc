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
						json = deserializeJSON(json)
						if (json.keyExists("examples") && isArray(json.examples) && arrayLen(json.examples)) {
							for (var e in json.examples) {
								if (e.keyExists("code") && e.keyExists("result") && Len(e.result)) {
									if (!find("<cf", e.code) && !find(";", e.code) && !find("{", e.code)) {
										var actualResult = "";
										try {
											actualResult = evaluate(e.code);
										} catch(any ex) {
											actualResult = "EXCEPTION: #ex.message#";
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