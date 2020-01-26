component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("draw");
		validatesUniquenessOf(properties="draw", message="Το αίτημα ασφαλιστικών οφείλει να είναι μοναδικό!");
		
	}

}