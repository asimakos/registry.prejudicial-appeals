component extends="Model" {

	function config() {

		validatesPresenceOf("username,password,email,firstname,lastname");
		validatesUniquenessOf("username,email");
		validatesFormatOf(property="email", allowBlank=false, type="email");
		validatesLengthOf(property="username", within="4,25", message="Your username must be 4 - 25 characters long", allowBlank=false);
		validatesConfirmationOf(property="password",message="The passwords you entered did not match.");

		beforeValidation("sanitize");
        
        // Password encryption after validation and before saving the user
		beforeCreate("setPassword");

    }


    function setPassword(){

        if (structKeyExists(this,"password") and this.passwordHasChanged()){
	        this.password=hash(this.password, "SHA-512");
        }

    }

    boolean function isActive() {

	    if (this.activatedAt is "")
	       return false;
	    else
	       return true;  

    }

    function activate(){

		this.activatedAt = now();
		this.save();
    }

    function isPassword(required string password) {

        return  (compare(hash(arguments.password, "SHA-512"), this.password) EQ 0)
    }

    function setActivationCode(){

	    this.activationCode = createUUID();	
    }

    function sanitize() {

		if(structKeyExists(this, "username"))
			this.username = sanitizeInput(this.username);
		if(structKeyExists(this, "firstname"))
			this.firstname = sanitizeInput(this.firstname);
		if(structKeyExists(this, "lastname"))
			this.lastname = sanitizeInput(this.lastname);
		if(structKeyExists(this, "email"))
			this.email = sanitizeInput(this.email);
	
	}

	//Reset password tokens

	function generatePasswordResetToken() {
		this.resetToken = Replace(LCase(CreateUUID()), "-", "", "all");
		this.resetTokenAt = Now();
	}

	//Clear resetToken and resetTokenAt after password reset

	function clearPasswordResetToken(){
		this.resetToken = "";
		this.resetTokenAt = "";
	}


}