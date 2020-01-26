component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("info");
		validatesUniquenessOf(properties="info", message="O προσβαλλόμενος τύπος πράξης οφείλει να είναι μοναδική!");
		
	}

}