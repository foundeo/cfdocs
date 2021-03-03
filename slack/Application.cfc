component {
    this.name = "cfdocs_slack";
    this.sessionManagement = false;
    
    public function onApplicationStart() {
        application.index = DeserializeJSON( FileRead(ExpandPath("../data/en/index.json")));
    }

}