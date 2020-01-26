<cfparam name="params.q">
<cfparam name="municipals">
<cfparam name="params.municipalid">

<cfoutput>
	#startFormTag(route="organizations", method="get", class="form-inline mb-2")#
		<div class="row">
			<div class="col">
				#selectTag(name="municipalid", options=municipals, includeBlank="Δήμοι", selected=params.municipalid, label="Δήμος", prependToLabel="<div class=""form-group mb-2"">", labelClass="sr-only")#
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