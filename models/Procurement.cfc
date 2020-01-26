component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("cpv_code");
		validatesPresenceOf("cpv_name");
		validatesUniquenessOf(properties="cpv_code", message="Ο κωδικός προμήθειας οφείλει να είναι μοναδικός!");
		validatesUniquenessOf(properties="cpv_name", message="To όνομα προμήθειας οφείλει να είναι μοναδικό!");
		
	}

}