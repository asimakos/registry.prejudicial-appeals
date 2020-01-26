<cfparam name="objection">

<cfoutput>

	#pageHeader(title="Δημιουργία",  btn=linkTo(route="objections", text="<i class='fa fa-chevron-left'></i> Άκυρο", class="btn btn-info btn-xs", encode="attributes"))#

	#errorMessagesFor("objection")#

	#startFormTag(id="objectionNewForm", route="Objections")#

	#includePartial("form/details")#

	#submitTag(value="Δημιουργία", class="mt-4 btn btn-success")#

    #endFormTag()#


</cfoutput>