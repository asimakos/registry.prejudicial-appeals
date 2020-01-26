<cfparam name="organization">

<cfoutput>

	#pageHeader(title="Δημιουργία",  btn=linkTo(route="organizations", text="<i class='fa fa-chevron-left'></i> Άκυρο", class="btn btn-info btn-xs", encode="attributes"))#

	#errorMessagesFor("organization")#

	#startFormTag(id="organizationNewForm", route="Organizations")#

	#includePartial("form/details")#

	#submitTag(value="Δημιουργία", class="mt-4 btn btn-success")#

    #endFormTag()#


</cfoutput>

