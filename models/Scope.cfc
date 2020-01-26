component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("template");
		validatesUniquenessOf(properties="template", message="Η έκταση διαγωνισμού οφείλει να είναι μοναδική!");
		
	}

}