component extends="controllers.Controller" {

	function config() {

	    filters(through="GetAllAssociations", only="new,edit,update,index");
	    filters(through="LoggedInRequired");

	}
     
    //Add new objection
	
	function new() {
		param name="params.procurementid" default=0;
		
		objection=model("objection").new();
		
	}

	//Create objection

	function create() {

		param name="params.procurementid" default=0;

		objection=model("objection").new(params.objection);

		objection.enterpriseid=params.objection.enterpriseid;
		objection.organizationid=params.objection.organizationid;
		objection.vatid=params.objection.vatid;
		objection.procedureid=params.objection.procedureid;
		objection.scopeid=params.objection.scopeid;
		objection.awardid=params.objection.awardid;
		objection.citationid=params.objection.citationid;
		objection.demandid=params.objection.demandid;
		objection.procurementid=params.procurementid;
		objection.interimid=params.objection.interimid;
		
		if(objection.save()){
			redirectTo(action="index", success="Επιτυχής δημιουργία Προσφυγής!");
		} else {
			renderView(action="new");
		}
	}

	//Update specific objection

	function update() {

		param name="params.procurementid" default=0;

		objection=model("objection").findByKey(params.key);

		objection.enterpriseid=params.objection.enterpriseid;
		objection.organizationid=params.objection.organizationid;
		objection.vatid=params.objection.vatid;
		objection.procedureid=params.objection.procedureid;
		objection.scopeid=params.objection.scopeid;
		objection.awardid=params.objection.awardid;
		objection.citationid=params.objection.citationid;
		objection.demandid=params.objection.demandid;
		objection.procurementid=params.procurementid;
		objection.interimid=params.objection.interimid;

		if(objection.update(params.objection)){
			redirectTo(action="index", success="Ενημέρωση επιτυχής!");
		} else {
			renderView(action="edit");
		}
	}

	 //Delete specific objection

	function delete() {
		objection=model("objection").findByKey(params.key);
		if(objection.delete()){
			redirectTo(action="index", success="Διαγραφή επιτυχής!");
		} 
	}

	//Edit specific objection

	function edit() {

		param name="params.procurementid" default=0;

		objection=model("objection").findByKey(params.key);
		params.procurementid=objection.procurementid;

		if(!isObject(objection)){
			objectNotFound();
		}
	}
 
    //View specific objection

	function show() {
		objection=model("objection").findByKey(key=params.key,include="enterprise,organization,vat,procedure,scope,award,citation,demand,interim,procurement");
		if(!isObject(objection)){
			objectNotFound();
		}
	}

	//Redirect to list if failure occurs

	private function objectNotFound() {
		redirectTo(action="index", error="Δεν βρέθηκε εγγραφή!");
	}

	//View all objections

	function index() {
		param name="params.q" default="";
		param name="params.qdate" default="";
		param name="params.enterpriseid" default=0;
		param name="params.organizationid" default=0;
		param name="params.page" type="numeric" default=1;
		param name="params.perpage" type="numeric" default=30;
		
		local.where=[];
		local.qdate="";

		if(params.enterpriseid > 0){
			arrayAppend(local.where, "enterpriseid = #params.enterpriseid#");
		}

		if(params.organizationid > 0){
			arrayAppend(local.where, "organizationid = #params.organizationid#");
		}

		if(len(params.q)){
			
			// var sanitizedQ=stripTags(params.q);

			if(len(params.q) GT 50){
				params.q = "";
			} else {
				arrayAppend(local.where, "submission_number LIKE '%#params.q#%'");
				// arrayAppend(local.where, local.qWhere);
			}
		}

        if(IsDate(params.qdate)){

        	local.qdate=params.qdate;
       
		    local.qdateWhere=[];
	         
			arrayAppend(local.qdateWhere, "president_assigned = '#local.qdate#'");
			arrayAppend(local.qdateWhere, "secretary_assigned = '#local.qdate#'");
			arrayAppend(local.where, whereify(local.qdateWhere, "OR"));
		}
		 
		objections=model("objection").findAll(where=whereify(local.where), page=params.page, perpage=params.perpage,include="enterprise,organization,procurement,interim");
	}

	private function GetAllAssociations(){

       enterprises=model("enterprise").findAll(select="id,enterprises.title",order="title");
       organizations=model("organization").findAll(select="id,organizations.ful_name",order="ful_name");
       vats=model("vat").findAll(order="amount");
       procedures=model("procedure").findAll(order="outline");
       scopes=model("scope").findAll(order="template");
       awards=model("award").findAll(order="layout");
       citations=model("citation").findAll(order="scheme");
       demands=model("demand").findAll(order="info");
       interims=model("interim").findAll(order="draw");

	}

}