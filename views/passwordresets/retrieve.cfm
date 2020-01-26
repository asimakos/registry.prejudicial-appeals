<!---
	Password Reset Form
--->
<cfparam name="user">
<cfoutput>
<div class="row">
  <div class="col-md-6 offset-md-3">
  	#errorMessagesFor("user")#
	#panel(title="Ανάκτηση κωδικού")#
		#startFormTag(route="resetpassword", method="put", token=params.token)#
	      #passwordField(objectname="user", property="password", label="Νέος κωδικός χρήστη", required="true")#
	      #passwordField(objectname="user", property="passwordConfirmation", label="Επιβεβαίωση κωδικού χρήστη", required="true")#
			#submitTag(value="Ενημέρωση", class="btn btn-block btn-primary")#
		#endFormTag()#
	#panelEnd()#
	</div>
</div>
</cfoutput>
