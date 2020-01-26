component extends="controllers.Controller" {

	function config(){
    
	    filters(through="responseJson"); 
	    provides("json");   
  
	}

	function index(){

		for(var p in procurements){
		    arrayAppend(rv.items, {
		      "text": p.cpv_code, "value": p.id
		    });
		  }
		renderWith(data=rv.items);		
	}

    private function responseJson(){

    	params.format="json";
    
	    rv= {
		   "items" = [],
		   "status":""
		  };
	    procurements=model("procurement").findAll(select="procurements.id,procurements.cpv_code");
	    
	    rv.status=200;
  
    }

}