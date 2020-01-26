component extends="controllers.Controller" {

	function config(){

		filters(through="isLoggedIn",only="new");
	}

	public function new() {

	}

	public function create() {
		if(params.login is "" or params.password is ""){
			flashInsert(error="Τα στοιχεία του χρήστη είναι λάθος! Παρακαλώ προσπαθήστε ξανά.");
			redirectTo(action="new");
		} else {
			$passwordAuthentication(params.login, params.password);
		}
	}
     
        // terminate session - logout  
        // todo: need to check for the remember me flag here and delete cookie if needed 
    public any function destroy() {
		structDelete(session, 'currentUser');
		flashInsert(success='Μόλις έχετε αποσυνδεθεί!');
		redirectTo(route="login");
	}
  
        // authUser.activatedAt is NOT "" as correct
	private function $passwordAuthentication(string login, string password) {
		authUser = model("user").findOneByUsername(arguments.login);
			
		if(isboolean(authUser) and Not authUser){
			$failedLogin();
		}
		
		if(authUser.isPassword(arguments.password) AND authUser.activatedAt is NOT ""){
			$successfulLogin(authUser);
		} else {
			$failedLogin();
		}
	}

	private function $successfulLogin(any user) {

		session.currentUser = arguments.user;
		
		flashInsert(success="Ο χρήστης <strong>#session.currentUser.firstname#</strong> είναι συνδεδεμένος!");
		redirectTo(route="root");
	}

	private function $failedLogin() {
		flashInsert(error="Τα στοιχεία του χρήστη είναι λάθος! Παρακαλώ προσπαθήστε ξανά.");
		redirectTo(action='new');
	}

}