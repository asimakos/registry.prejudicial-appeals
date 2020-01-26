<cfoutput>
#panel(title="Στοιχεία Χρήστη", class="mb-2")#
	<div class="row">
		<div class="col">
			#textField(objectName="user", property="username", label="Αναγνωριστικό χρήστη")#
		</div>
		<div class="col">
			#textField(objectName="user", property="firstname", label="Όνομα χρήστη")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="user", property="lastname", label="Επώνυμο χρήστη")#
		</div>
		<div class="col">
			#textField(objectName="user", property="email", label="e-Ταχυδρομείο")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#passwordField(objectName="user", property="password", label="Κωδικός χρήστη")#
		</div>
		<div class="col">
			#passwordField(objectName="user", property="passwordConfirmation", label="Επιβεβαίωση κωδικού χρήστη", required='true')#
		</div>
	</div>
#panelEnd()#
</cfoutput>