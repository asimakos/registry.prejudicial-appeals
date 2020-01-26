component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("appellation");
		validatesUniquenessOf(properties="appellation", message="H ονομασία οφείλει να είναι μοναδική!");
		
	}

}