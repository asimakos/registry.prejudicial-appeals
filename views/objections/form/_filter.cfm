<cfparam name="params.q">
<cfparam name="params.qdate">
<cfparam name="enterprises">
<cfparam name="organizations">
<cfparam name="params.enterpriseid">
<cfparam name="params.organizationid">



<cfoutput>
	#startFormTag(route="objections", method="get", class="form-inline mb-2")#
		<div class="row">
			<div class="col">
				#selectTag(name="enterpriseid", options=enterprises, includeBlank="Προσφεύγων", selected=params.enterpriseid, label="Προσφεύγων", prependToLabel="<div class=""form-group mb-2"">", labelClass="sr-only")#
		   </div>
		   <div class="col">
				#selectTag(name="organizationid", options=organizations, includeBlank="Αναθέτων", selected=params.organizationid, label="Αναθέτων", prependToLabel="<div class=""form-group mb-2"">", labelClass="sr-only")#
		   </div>
		   <div class="col">
				#datePickerTag(name="qdate",value=params.qdate,dateFormat="d-M-yy",label="Date Search", prependToLabel="<div class=""form-group mb-2"">", labelClass="sr-only", placeholder="Date")#
			</div>
			<div class="col">
				#textFieldTag(name="q", value=params.q, label="Keyword Search", prependToLabel="<div class=""form-group mb-2"">", labelClass="sr-only", placeholder="Keyword")#
			</div>

		    <div class="col">
				#submitTag(value="Αναζήτηση", class="btn btn-info")#
			</div>
		</div>
	#endFormTag()#
</cfoutput>