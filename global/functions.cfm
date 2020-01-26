<cfscript>
  // Place functions here that should be available globally in your application.
  
  public string function whereify(required array array, string operator="AND") {
    var loc = {};
    loc.array = [];
    for (loc.i=1; loc.i <= ArrayLen(arguments.array); loc.i++) {
        loc.array[loc.i] = "(#arguments.array[loc.i]#)";
    }
    return ArrayToList(loc.array, " #arguments.operator# ");
 }

  public string function app_domain(){

    local.address="127.0.0.1:51576/index.cfm";

  	return local.address;
  }
  
</cfscript>
