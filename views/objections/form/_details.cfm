<cfparam name="params.procurementid">

<cfoutput>
#panel(title="Στοιχεία Προσφυγής", class="mb-2")#
	<div class="row">
		<div class="col">
			#datePicker(objectName="objection", property="president_assigned",dateFormat="d-M-yy",label="Ημερομηνία Χρέωσης Προέδρου")#
        </div>
		<div class="col">
			#datePicker(objectName="objection", property="protocol_assigned",dateFormat="d-M-yy",label="Ημερομηνία Πρωτοκόλου")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#datePicker(objectName="objection", property="secretary_assigned",dateFormat="d-M-yy",label="Ημερομηνία Χρέωσης Γραμματείας")#
		</div>
		<div class="col">
			#textField(objectName="objection", property="submission_number", label="Γενικός Αριθμός Κατάθεσης")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#select(objectName="objection", property="enterpriseid", options=enterprises, label="Τίτλος Προσφεύγουσας")#
        </div>
		<div class="col">
			#select(objectName="objection", property="organizationid", options=organizations, label="Τίτλος Αναθέτουσας")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="objection", property="declaration_number", label="Αριθμός Διακήρυξης")#
        </div>
		<div class="col">
			#textField(objectName="objection", property="eproc_number", label="Αριθμός ΕΣΗΔΗΣ")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#includePartial(partial="form/procurement_listing")#
        </div>
		<div class="col">
			#textField(objectName="objection", property="appeal_fee", label="Ποσό Παραβόλου &euro;")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="objection", property="months_task", label="Διάρκεια έργου (μήνες)")#
        </div>
		<div class="col">
			#textField(objectName="objection", property="netbudget_proclamation", label="Προϋπολογισμός Προκήρυξης (χωρίς ΦΠΑ)")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="objection", property="netbudget_appeal", label="Προϋπολογισμός Προσφυγής (χωρίς ΦΠΑ)")#
        </div>
		<div class="col">
			#select(objectName="objection", property="vatid", options=vats, label="ΦΠΑ")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#select(objectName="objection", property="procedureid", options=procedures, label="Τύπος Διαγωνισμού")#
        </div>
		<div class="col">
			#select(objectName="objection", property="scopeid", options=scopes, label="Έκταση Διαγωνισμού")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#select(objectName="objection", property="awardid", options=awards, label="Κριτήριο Διαγωνισμού")#
        </div>
		<div class="col">
			#select(objectName="objection", property="citationid", options=citations, label="Είδος Διαγωνισμού")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#select(objectName="objection", property="demandid", options=demands, label="Τύπος Προσβαλλόμενης")#
        </div>
		<div class="col">
			<fieldset>
				Αίτημα Αναστολής &nbsp;&nbsp;
				#radioButton(objectName="objection", property="interimid", tagValue="1", label="ΝΑΙ")#
				#radioButton(objectName="objection", property="interimid", tagValue="2", label="ΟΧΙ")#
			</fieldset>
		</div>
	</div>
	
#panelEnd()#
</cfoutput>

