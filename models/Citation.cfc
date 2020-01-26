component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("scheme");
		validatesUniquenessOf(properties="scheme", message="Το είδος διαγωνισμού οφείλει να είναι μοναδικό!");
		
	}

}