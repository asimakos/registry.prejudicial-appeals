component extends="controllers.Controller" {

	function config(){

		filters(through="isLoggedIn");
	}

	function new(){

	    }

	//Password reset and email notification

	function create(){

		user=model("user").findOneByEmail(params.email);

		if(!isObject(user)){
			redirectTo(route="forgot", error="Συγνώμη δεν μπορούμε να ολοκληρώσουμε την διαδικασία!");
		} else {
			// Check this account if it is activated
			if(isNull(user.activatedAt)){
				redirectTo(route="login", error="Συγνώμη ο λογαριασμός σας δεν έχει ακόμη ενεργοποιηθεί!");
			}

			// Generate and save token
			user.generatePasswordResetToken();

			if(!user.save()){
				redirectTo(route="forgot", error="Συγνώμη δεν μπορούμε να ολοκληρώσουμε την διαδικασία!");
			} else {
				// Send Reset Email
				sendEmail(from="noreply@yoursite.com", to=user.email, subject="Ανάκτηση κωδικού χρήσης", template="/emails/passwordreset", user=user);
				return redirectTo(route="login", success="Σας στάλθηκε email για τον κωδικό ανάκτησης !");
			}
		  }
	    }

    //Password retrieve form via email link 


    function retrieve(){

       user=model("user").findOneByResetToken(params.token);
    }

    //New Password update 

    function update(){

        user=model("user").findOneByResetToken(params.token);

		user.password=params.user.password;
		user.setPassword();
		user.clearPasswordResetToken();

		if(user.save()){
			
			redirectTo(route="login", success="Ο κωδικός χρήστη άλλαξε! Μπορείτε να τον χρησιμοποιήσετε.");
		} else {
 			renderView(action="retrieve");
		}
	}
    

}