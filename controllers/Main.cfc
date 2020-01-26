component extends="Controller" {

	function config() {
		super.config();
		filters(through="LoggedInRequired");
	}

	function index(){

	}

}