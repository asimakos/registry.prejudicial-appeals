component extends="controllers.Controller" {

	function config() {

	    filters(through="GetAllAssociations", only="new,edit,index,update");
	    filters(through="LoggedInRequired");

	}

       //Add new organization
	
	function new() {
		organization=model("organization").new();
		
	}

      //Create organization

	function create() {

		organization=model("organization").new(params.organization);

		organization.kindid=params.organization.kindid;
		organization.sectionid=params.organization.sectionid;
		organization.municipalid=params.organization.municipalid;
		organization.prefectureid=params.organization.prefectureid;
		organization.regionid=params.organization.regionid;
		
		if(organization.save()){
			redirectTo(action="index", success="Επιτυχής δημιουργία οργανισμού!");
		} else {
			renderView(action="new");
		}
	}

	  //View specific organization

	function show() {
		organization=model("organization").findByKey(key=params.key,include="kind,section,municipal,prefecture,region");
		if(!isObject(organization)){
			objectNotFound();
		}
	}

	  //Edit specific organization

	function edit() {
		organization=model("organization").findByKey(params.key);
		if(!isObject(organization)){
			objectNotFound();
		}
	}
     
      //View all organizations

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
				arrayAppend(local.qWhere, "ful_name LIKE '%#params.q#%'");
				arrayAppend(local.qWhere, "address LIKE '%#params.q#%'");
				arrayAppend(local.where, whereify(local.qWhere, "OR"));
			}
		}
		organizations=model("organization").findAll(where=whereify(local.where), page=params.page, perpage=params.perpage,include="section,municipal");
	}

	  //Update specific organization

	function update() {
		organization=model("organization").findByKey(params.key);

		organization.kindid=params.organization.kindid;
		organization.sectionid=params.organization.sectionid;
		organization.municipalid=params.organization.municipalid;
		organization.prefectureid=params.organization.prefectureid;
		organization.regionid=params.organization.regionid;

		if(organization.update(params.organization)){
			redirectTo(action="index", success="Ενημέρωση επιτυχής!");
		} else {
			renderView(action="edit");
		}
	}
  
     //Delete specific organization

	function delete() {
		organization=model("organization").findByKey(params.key);
		if(organization.delete()){
			redirectTo(action="index", success="Διαγραφή επιτυχής!");
		} 
	}

	//Redirect to list if failure occurs

	private function objectNotFound() {
		redirectTo(action="index", error="Δεν βρέθηκε εγγραφή!");
	}

	// Get all foreign keys records

	private function GetAllAssociations(){

       kinds=model("kind").findAll(order="category");
       sections=model("section").findAll(order="class");
       municipals=model("municipal").findAll(order="name");
       prefectures=model("prefecture").findAll(order="description");
       regions=model("region").findAll(order="appellation");

	}

}