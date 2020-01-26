component extends="controllers.Controller" {

	function config() {

	    filters(through="GetAllAssociations", only="new,edit,index");
	    filters(through="LoggedInRequired");

	}

       //Add new enterprise
	
	function new() {
		enterprise=model("enterprise").new();
		
	}

      //Create enterprise

	function create() {

		enterprise=model("enterprise").new(params.enterprise);

		enterprise.typeid=params.enterprise.typeid;
		enterprise.municipalid=params.enterprise.municipalid;
		enterprise.prefectureid=params.enterprise.prefectureid;
		enterprise.regionid=params.enterprise.regionid;
		
		if(enterprise.save()){
			redirectTo(action="index", success="Επιτυχής δημιουργία οικονομικού φορέα!");
		} else {
			renderView(action="new");
		}
	}

	  //View specific enterprise

	function show() {
		enterprise=model("enterprise").findByKey(key=params.key,include="type,municipal,prefecture,region");
		if(!isObject(enterprise)){
			objectNotFound();
		}
	}

	  //Edit specific enterprise

	function edit() {
		enterprise=model("enterprise").findByKey(params.key);
		if(!isObject(enterprise)){
			objectNotFound();
		}
	}
     
      //View all enterprises

	function index() {
		param name="params.q" default="";
		param name="params.municipalid" default=0;
		param name="params.page" type="numeric" default=1;
		param name="params.perpage" type="numeric" default=30;
		
		local.where=[];

		if(params.municipalid > 0){
			arrayAppend(local.where, "municipalid = #params.municipalid#");
		}
		
        if(len(params.q)){
			local.qWhere=[];
			// var sanitizedQ=stripTags(params.q);

			if(len(params.q) GT 50){
				params.q = "";
			} else {
				arrayAppend(local.qWhere, "full_name LIKE '%#params.q#%'");
				arrayAppend(local.qWhere, "address LIKE '%#params.q#%'");
				arrayAppend(local.where, whereify(local.qWhere, "OR"));
			}
		}
		enterprises=model("enterprise").findAll(where=whereify(local.where), page=params.page, perpage=params.perpage,include="municipal");
	}

	  //Update specific enterprise

	function update() {

		enterprise=model("enterprise").findByKey(params.key);

		enterprise.typeid=params.enterprise.typeid;
		enterprise.municipalid=params.enterprise.municipalid;
		enterprise.prefectureid=params.enterprise.prefectureid;
		enterprise.regionid=params.enterprise.regionid;

		if(enterprise.update(params.enterprise)){
			redirectTo(action="index", success="Ενημέρωση επιτυχής!");
		} else {
			renderView(action="edit");
		}
	}
  
     //Delete specific enterprise

	function delete() {
		enterprise=model("enterprise").findByKey(params.key);
		if(enterprise.delete()){
			redirectTo(action="index", success="Διαγραφή επιτυχής!");
		} 
	}

	//Redirect to list if failure occurs

	private function objectNotFound() {
		redirectTo(action="index", error="Δεν βρέθηκε εγγραφή!");
	}

	// Get all foreign keys records

	private function GetAllAssociations(){

       types=model("type").findAll(order="designation");
       municipals=model("municipal").findAll(order="name");
       prefectures=model("prefecture").findAll(order="description");
       regions=model("region").findAll(order="appellation");

	}


}