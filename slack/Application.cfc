component {
    this.name = "cfdocs_slack";
    this.sessionManagement = false;
    
    public function onApplicationStart() {
        application.data_path = replace(getDirectoryFromPath(getCurrentTemplatePath()), "/slack/", "/data/");
        application.index = DeserializeJSON( FileRead(application.data_path & "en/index.json"));
    }

}