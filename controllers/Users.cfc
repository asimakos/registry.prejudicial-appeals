component extends="controllers.Controller" {

	function config(){

		filters(through="isLoggedIn",only="new");
		filters(through="LoggedInRequired",except="new,create");
	}


  //Add new user
	
	function new() {
		user=model("user").new();
	
	}

  //Create user

	function create() {

		user=model("user").new(params.user);
		user.setActivationCode();
		
		if(user.save()){
			sendEmail(from="noreply@yoursite.com", to=user.email, subject="Ενεργοποίηση λογαριασμού χρήστη", template="/emails/accountactivation", user=user);
		    flashInsert(success="Ευχαριστούμε για την εγγραφή! Αρχικά θα πρέπει να ενεργοποίησετε τον λογαριασμό σας μεσω email που θα σας αποσταλεί.");
			redirectTo(route="login", success="Επιτυχής δημιουργία χρήστη!");
		} else {
			renderView(action="new");
		}

    }

    //Edit specific user

	function edit() {
		user=model("user").findByKey(params.key);
		if(!isObject(user)){
			objectNotFound();
		}
	}

    //Update specific user

	function update() {
		user=model("user").findByKey(params.key);

		if(user.update(params.user)){
			redirectTo(action="index", success="Ενημέρωση επιτυχής!");
		} else {
			renderView(action="edit");
		}
	}

    //View specific user

	function show() {
		user=model("user").findByKey(key=params.key);
		if(!isObject(user)){
			objectNotFound();
		}
	}

	//Delete specific user

	function delete() {
		user=model("user").findByKey(params.key);
		if(user.delete()){
			redirectTo(action="index", success="Διαγραφή επιτυχής!");
		} 
	}

    //View all users

	function index() {
		
		param name="params.page" type="numeric" default=1;
		param name="params.perpage" type="numeric" default=30;

		users=model("user").findAll(page=params.page, perpage=params.perpage);

   }

}