<cfparam name="objection">
<cfoutput>
#pageHeader(title="Επεξεργασία", btn=linkTo(route="objections", text="<i class='fa fa-chevron-left'></i> Άκυρο", class="btn btn-info btn-xs", encode="attributes"))#

#errorMessagesFor("objection")#
#startFormTag(id="objectionEditForm",route="objection", method="put", key=params.key)#
	#includePartial("form/details")#
	#submitTag(value="Ενημέρωση", class="mt-4 btn btn-success")#
#endFormTag()#

</cfoutput>