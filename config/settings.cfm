<cfscript>

	// Use this file to configure your application.
	// You can also use the environment specific files (e.g. /config/production/settings.cfm) to override settings set here.
	// Don't forget to issue a reload request (e.g. reload=true) after making changes.
	// See http://docs.cfwheels.org/docs/configuration-and-defaults for more info.

	// If you leave the settings below commented out, CFWheels will set the data source name to the same name as the folder the application resides in.
	   set(dataSourceName="appeals");
	// set(dataSourceUserName="");
	// set(dataSourcePassword="");


	set(functionName="textField,textFieldTag,dateSelect,select,selectTag,passwordField,passwordFieldTag,textArea,textAreaTag,fileFieldTag,fileField",
		class="form-control",
		labelClass="control-label",
		labelPlacement="before",
		prependToLabel="<div class='form-group'>",
		prepend="<div class=''>",
		append="</div></div>",
		encode="attributes"  );



</cfscript>
