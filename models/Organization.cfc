component extends="Model" {

	function config() {

		belongsTo("kind");
		belongsTo("section");
		belongsTo("municipal");
		belongsTo("prefecture");
		belongsTo("region");

		// Properties
		
		validatesPresenceOf("ful_name,address,postcode,telephone,fax,email");
		validatesUniquenessOf(properties="email",message="Το e-ταχυδρομείο πρέπει να είναι μοναδικό!");
		validatesFormatOf(property="email", allowBlank=true, type="email",message="Το e-ταχυδρομείο δεν έχει σωστή μορφή!");

		protectedProperties("kindid,sectionid,municipalid,prefectureid,regionid");

        beforeValidation("sanitize");
  }

    /**
	* Sanitizes the Organization object
	*/

    function sanitize() {

		if(structKeyExists(this, "ful_name"))
			this.ful_name = sanitizeInput(this.ful_name);
		if(structKeyExists(this, "address"))
			this.address = sanitizeInput(this.address);
		if(structKeyExists(this, "postcode"))
			this.postcode = sanitizeInput(this.postcode);
		if(structKeyExists(this, "telephone"))
			this.telephone = sanitizeInput(this.telephone);
		if(structKeyExists(this, "fax"))
			this.fax = sanitizeInput(this.fax);
		if(structKeyExists(this, "email"))
			this.email = sanitizeInput(this.email);

	}


}