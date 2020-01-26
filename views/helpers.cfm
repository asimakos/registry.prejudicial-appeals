<cfscript>
  // Place helper functions here that should be available for use in all view pages of your application.
  
  // Renders a bootstrap Card/Panel but with custom contents

 string function panel(string title="", string class="", string style="", string btn=""){
    savecontent variable="local.rv" {
        writeOutput('<div class="card ' & arguments.class & '" style="' & arguments.style & '">');
        writeOutput('<div class="card-header">' & '<b>' & e(arguments.title) & '</b>');
        if(len(arguments.btn)){
          writeOutput('<span class="float-right">' & arguments.btn & '</span>');
        }
        writeOutput('</div><div class="card-body">');
      }
    return local.rv;
  }

  // Default Page Header: allows passing in some custom contents to float right

  string function pageHeader(string title="", string btn=""){
    writeOutput('<h2 class="font-weight-light">' & e(arguments.title));
    if(len(arguments.btn)){
      writeOutput('<span class="float-right">' & arguments.btn & '</span>');
    }
    writeOutput('</h2><hr />');
  }

  string function pageHeaderLogin(string title="", string btnOne="", string btnTwo=""){
    writeOutput('<h2 class="font-weight-light">' & e(arguments.title));
    if(len(arguments.btnOne)){
      writeOutput('<span class="float-right">' & arguments.btnOne & '</span>');
    }
    if(len(arguments.btnTwo)){
      writeOutput('<span class="float-right">' & arguments.btnTwo & "&nbsp;&nbsp;&nbsp;" & '</span>');
    }
    writeOutput('</h2><hr />');
  }

  // Ends a panel

  string function panelEnd(){
      writeOutput('</div></div>');

  }
  
  // Shortcut to encodeForHTML

  string function e(string string="") {
  	return encodeForHTML(arguments.string);
  }

</cfscript>
