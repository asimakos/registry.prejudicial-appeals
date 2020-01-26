component extends="Model" {

	function config() {

		// Properties
		validatesPresenceOf("amount");
		validatesUniquenessOf(properties="amount", message="Το ποσό ΦΠΑ οφείλει να είναι μοναδικό!");
		
	}

}