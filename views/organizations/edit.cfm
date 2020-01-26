<cfparam name="organization">
<cfoutput>
#pageHeader(title="Επεξεργασία", btn=linkTo(route="organizations", text="<i class='fa fa-chevron-left'></i> Άκυρο", class="btn btn-info btn-xs", encode="attributes"))#


#errorMessagesFor("organization")#
#startFormTag(id="organizationEditForm",route="organization", method="put", key=params.key)#
	#includePartial("form/details")#
	#submitTag(value="Ενημέρωση", class="mt-4 btn btn-success")#
#endFormTag()#

</cfoutput>