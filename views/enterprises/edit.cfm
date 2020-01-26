<cfparam name="enterprise">
<cfoutput>
#pageHeader(title="Επεξεργασία", btn=linkTo(route="enterprises", text="<i class='fa fa-chevron-left'></i> Άκυρο", class="btn btn-info btn-xs", encode="attributes"))#


#errorMessagesFor("enterprise")#
#startFormTag(id="enterpriseEditForm",route="enterprise", method="put", key=params.key)#
	#includePartial("form/details")#
	#submitTag(value="Ενημέρωση", class="mt-4 btn btn-success")#
#endFormTag()#

</cfoutput>