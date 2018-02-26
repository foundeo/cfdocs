component {
	this.name = "tests" & Hash( GetCurrentTemplatePath() );

	this.mappings[ "/testbox" ] = ExpandPath( "./testbox" );
	this.mappings[ "/tests"   ] = ExpandPath( "./tests" );
	this.mappings[ "/temp"    ] = getTempDirectory();
	this.timezone="UTC";

	

}