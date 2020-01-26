component extends="controllers.Controller" {


   //Account activation via email

	function activate(){
	
		if (params.activationCode is "") {
			flashInsert(error="Ο κωδικός ενεργοποίησης είναι άκυρος! Παρακαλώ επισκεφτείτε την διεύθυνση που λάβατε με email.");
		    redirectTo(route="authenticate");
	    }

	    user = model("user").findOneByActivationCode(params.activationCode);

	    if (!isObject(user)){
	        flashInsert(error="Δεν υπάρχει χρήστης με αυτόν τον κωδικό ενεργοποίησης, παρακαλώ ελέξτε ξανά το email σας.");
	        redirectTo(route="authenticate");
	    } 
	    else if (user.isActive()) {
	        flashInsert(warning="Ο λογαριασμός σας έχει ήδη ενεργοποιηθεί! Μπορείτε να εισάγετε τα στοιχεία σας."); 
	        redirectTo(route="login");
	    }
	    else {
	        user.activate();
	        flashInsert(success="Ο λογαριασμός σας έχει ενεργοποιηθεί επιτυχώς! Μπορείτε να εισάγετε τα στοιχεία σας.");
	        redirectTo(route="login");
	    }
    }  

}