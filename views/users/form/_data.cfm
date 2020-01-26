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
			<fieldset>
				Διαχειριστής &nbsp;&nbsp;
				#radioButton(objectName="user", property="admin", tagValue="1", label="ΝΑΙ")#
				#radioButton(objectName="user", property="admin", tagValue="0", label="ΟΧΙ")#
			</fieldset>
		</div>
    </div>
#panelEnd()#
</cfoutput>