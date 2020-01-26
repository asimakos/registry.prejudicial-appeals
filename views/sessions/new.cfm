
<cfoutput>
    #pageHeaderLogin(title="Σύνδεση χρήστη", btnOne=linkTo(route="newUser", text="<i class='fas fa-user-plus'></i> Νέος", class="btn btn-primary btn-xs", encode="attributes"),
    btnTwo=linkTo(route="forgot", text="<i class='fas fa-question'></i> Ανάκτηση", class="btn btn-primary btn-xs", encode="attributes"))#
	#startFormTag(id="LoginForm", route="authenticate")#
	#panel(title="Στοιχεία σύνδεσης")#
		<div class="row">
			<div class="col-md-6 offset-md-3">
				#textFieldTag(name="login", label="Όνομα χρήστη")#
			
				#passwordFieldTag(name="password", label="Κωδικός")#
			
				#submitTag(value="Σύνδεση", class="btn btn-primary")#
			</div>
		</div>
	#panelEnd()#
    #endFormTag()#
    
</cfoutput>