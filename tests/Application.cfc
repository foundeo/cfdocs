component {
	this.name = "tests" & Hash( GetCurrentTemplatePath() );

	this.mappings[ "/testbox" ] = ExpandPath( "./testbox" );
	this.mappings[ "/tests"   ] = ExpandPath( "./tests" );
	this.timezone="UTC";

	public void function onRequest( required string requestedTemplate ) {
		include arguments.requestedTemplate;
	}

}