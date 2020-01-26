
<cfparam name="user">
<cfoutput>

	#pageHeader(title="Δημιουργία",btn=linkTo(route="login", text="<i class='fas fa-user-check'></i> Σύνδεση", class="btn btn-info btn-xs", encode="attributes"))#
  
	#errorMessagesFor("user","alert alert-danger")#

	#startFormTag(id="userNewForm", route="Users")#

	#includePartial("form/details")#

	#submitTag(value="Δημιουργία", class="mt-4 btn btn-success")#

    #endFormTag()#
  

</cfoutput>