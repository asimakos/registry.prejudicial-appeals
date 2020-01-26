<cfparam name="enterprise">

<cfoutput>

	#pageHeader(title="Δημιουργία",  btn=linkTo(route="enterprises", text="<i class='fa fa-chevron-left'></i> Άκυρο", class="btn btn-info btn-xs", encode="attributes"))#

	#errorMessagesFor("enterprise")#

	#startFormTag(id="enterpriseNewForm", route="Enterprises")#

	#includePartial("form/details")#

	#submitTag(value="Δημιουργία", class="mt-4 btn btn-success")#

    #endFormTag()#


</cfoutput>

