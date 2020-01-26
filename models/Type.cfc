component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("designation");
		validatesUniquenessOf(properties="designation", message="Ο τύπος οφείλει να είναι μοναδικός!");
		
	}

}