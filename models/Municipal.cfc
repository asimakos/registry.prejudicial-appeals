component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("name");
		validatesUniquenessOf(properties="name", message="H ονομασία οφείλει να είναι μοναδική!");
		
	}

}