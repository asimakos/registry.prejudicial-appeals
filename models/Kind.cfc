component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("category");
		validatesUniquenessOf(properties="category", message="Η κατηγορία οφείλει να είναι μοναδική!");
		
	}

}