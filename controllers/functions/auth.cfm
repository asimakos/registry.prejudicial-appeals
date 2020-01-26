<cfscript>

// Controller Authentication Functions

 private function isLoggedIn(){

		local.keyexists=structKeyExists(session, 'currentUser');
		if (local.keyexists)
		    redirectTo(route="root"); 
	}

private function LoggedInRequired(){

		local.keyexists=structKeyExists(session, 'currentUser');
		if (NOT local.keyexists)
		    redirectTo(route="login"); 
	}



</cfscript>