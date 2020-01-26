component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("outline");
		validatesUniquenessOf(properties="outline", message="Ο τύπος διαγωνισμού οφείλει να είναι μοναδικός!");
		
	}

}