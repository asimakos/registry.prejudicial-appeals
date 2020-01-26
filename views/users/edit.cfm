<cfparam name="user">
<cfoutput>
#pageHeader(title="Επεξεργασία", btn=linkTo(route="users", text="<i class='fa fa-chevron-left'></i> Άκυρο", class="btn btn-info btn-xs", encode="attributes"))#


#errorMessagesFor("user")#
#startFormTag(id="userEditForm",route="user", method="put", key=params.key)#
	#includePartial("form/data")#
	#submitTag(value="Ενημέρωση", class="mt-4 btn btn-success")#
#endFormTag()#

</cfoutput>