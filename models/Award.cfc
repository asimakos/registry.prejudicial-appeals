component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("layout");
		validatesUniquenessOf(properties="layout", message="Το κριτήριο διαγωνισμού οφείλει να είναι μοναδικό!");
		
	}

}