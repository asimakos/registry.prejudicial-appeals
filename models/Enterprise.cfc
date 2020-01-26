component extends="Model" {

	function config() {

		belongsTo("type");
		belongsTo("municipal");
		belongsTo("prefecture");
		belongsTo("region");

		// Properties
		validatesPresenceOf("full_name,title,tax_number,year,address,postcode,country,telephone,fax,email");
		validatesUniquenessOf("email");
		validatesFormatOf(property="email", allowBlank=true, type="email");

		protectedProperties("typeid,municipalid,prefectureid,regionid");

        beforeValidation("sanitize");
  }

    /**
	* Sanitizes the Organization object
	*/

    function sanitize() {

		if(structKeyExists(this, "full_name"))
			this.full_name = sanitizeInput(this.full_name);
		if(structKeyExists(this, "title"))
			this.title = sanitizeInput(this.title);
		if(structKeyExists(this, "tax_number"))
			this.tax_number = sanitizeInput(this.tax_number);
		if(structKeyExists(this, "year"))
			this.year = sanitizeInput(this.year);
		if(structKeyExists(this, "address"))
			this.address = sanitizeInput(this.address);
		if(structKeyExists(this, "postcode"))
			this.postcode = sanitizeInput(this.postcode);
		if(structKeyExists(this, "country"))
			this.country = sanitizeInput(this.country);
		if(structKeyExists(this, "telephone"))
			this.telephone = sanitizeInput(this.telephone);
		if(structKeyExists(this, "fax"))
			this.fax = sanitizeInput(this.fax);
		if(structKeyExists(this, "email"))
			this.email = sanitizeInput(this.email);

	}


}