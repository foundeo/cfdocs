component extends="testbox.system.BaseSpec" {
	function run(testResults, testBox) {
		
		var baseURL = (cgi.https IS "on") ? "https://" : "http://";
		baseURL &= cgi.server_name & ":" & cgi.server_port & "/doc.cfm?name=";

		describe("Test Doc Views", function() {
			it("should load a tag page: ", function() {
				cfhttp(url="#baseURL#cfhttp", method="get", result="local.result");
				expect( left( local.result.statusCode, 3 ) ).toBe(200);
			});
			it("should load a function page: ", function() {
				cfhttp(url="#baseURL#isdefined", method="get", result="local.result");
				expect( left( local.result.statusCode, 3 ) ).toBe(200);
			});

			it("should load a guide page: ", function() {
				cfhttp(url="#baseURL#cgi-scope", method="get", result="local.result");
				expect( left( local.result.statusCode, 3 ) ).toBe(200);
			});

			it("should 404 a made up page: ", function() {
				cfhttp(url="#baseURL#does-not-exist", method="get", result="local.result");
				expect( left( local.result.statusCode, 3 ) ).toBe(404);
			});
		});
	}
}
