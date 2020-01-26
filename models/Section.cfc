component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("class");
		validatesUniquenessOf(properties="class", message="Η κατηγορία οφείλει να είναι μοναδική!");
		
	}

}