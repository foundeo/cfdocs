component output="false" {

this.applicationname ="cfdocbuilder";
this.sessionManagement=false;
this.clientManagement=false;

public boolean function onApplicationStart() {

/**
 *  set base for json
 */

application.jsonBase = expandPath("/data/");

return true;
}



public void function onRequestEnd() {
return;

}





}