component extends="Model" {

	function config() {

		belongsTo("enterprise");
		belongsTo("organization");
		belongsTo("vat");
		belongsTo("procedure");
		belongsTo("scope");
		belongsTo("award");
		belongsTo("citation");
		belongsTo("demand");
		belongsTo("interim");
		belongsTo("procurement");

		// Properties
		validatesPresenceOf("president_assigned,protocol_assigned,secretary_assigned,submission_number,appeal_fee,months_task,declaration_number,eproc_number,netbudget_proclamation,netbudget_appeal");
		validatesFormatOf(properties="president_assigned,protocol_assigned,secretary_assigned", type="date");
		
		protectedProperties("enterpriseid,organizationid,VATid,procedureid,scopeid,awardid,citationid,demandid,interimid,procurementid");

        beforeValidation("sanitize");
  }

    /**
	* Sanitizes the Organization object
	*/

    function sanitize() {

		if(structKeyExists(this, "submission_number"))
			this.submission_number = sanitizeInput(this.submission_number);
		if(structKeyExists(this, "appeal_fee"))
			this.appeal_fee = sanitizeInput(this.appeal_fee);
		if(structKeyExists(this, "months_task"))
			this.months_task = sanitizeInput(this.months_task);
		if(structKeyExists(this, "declaration_number"))
			this.declaration_number = sanitizeInput(this.declaration_number);
		if(structKeyExists(this, "eproc_number"))
			this.eproc_number = sanitizeInput(this.eproc_number);
		if(structKeyExists(this, "netbudget_proclamation"))
			this.netbudget_proclamation = sanitizeInput(this.netbudget_proclamation);
		if(structKeyExists(this, "netbudget_appeal"))
			this.netbudget_appeal = sanitizeInput(this.netbudget_appeal);
		
	}

}