component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("description");
		validatesUniquenessOf(properties="description", message="H ονομασία οφείλει να είναι μοναδική!");
		
	}

}