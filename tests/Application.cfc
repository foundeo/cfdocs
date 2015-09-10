component {
	this.name = "tests" & Hash( GetCurrentTemplatePath() );

	this.mappings[ "/testbox" ] = ExpandPath( "./testbox" );
	this.mappings[ "/tests"   ] = ExpandPath( "./tests" );

	public void function onRequest( required string requestedTemplate ) {
		include arguments.requestedTemplate;
	}

}