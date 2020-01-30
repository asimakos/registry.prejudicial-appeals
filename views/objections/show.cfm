<cfparam name="objection">
<cfoutput>
#pageHeader(title="Προσφυγή" & Chr(32) & objection.submission_number,  btn=linkTo(route="objections", text="<i class='fa fa-chevron-left'></i> Επιστροφή", class="btn btn-info btn-xs", encode="attributes"))#

#panel(title="Στοιχεία", class="mb-4")#

<table class="table table-sm">
	<tbody>
		<tr>
			<th>Ημερομηνία Χρέωσης Προέδρου</th>
			<td>#e(DateFormat(objection.president_assigned, "mmmm d, yyyy"))#</td>
		</tr>
		<tr>
			<th>Ημερομηνία Πρωτοκόλου</th>
			<td>#e(DateFormat(objection.protocol_assigned, "mmmm d, yyyy"))#</td>
		</tr>
		<tr>
			<th>Ημερομηνία Χρέωσης Γραμματείας</th>
			<td>#e(DateFormat(objection.secretary_assigned, "mmmm d, yyyy"))#</td>
		</tr>
		<tr>
			<th>Γενικός Αριθμός Κατάθεσης</th>
			<td>#e(objection.submission_number)#</td>
		</tr>
		<tr>
			<th>Τίτλος Προσφεύγουσας</th>
			<td>#e(objection.enterprise.title)#</td>
		</tr>
		<tr>
			<th>Τίτλος Αναθέτουσας</th>
			<td>#e(objection.organization.ful_name)#</td>
		</tr>
		<tr>
			<th>Αριθμός Διακήρυξης</th>
			<td>#e(objection.declaration_number)#</td>
		</tr>
		<tr>
			<th>Αριθμός ΕΣΗΔΗΣ</th>
			<td>#e(objection.eproc_number)#</td>
		</tr>
		<tr>
			<th>Αριθμός Προμήθειας</th>
			<td>#e(objection.procurement.cpv_code)#</td>
		</tr>
		<tr>
			<th>Περιγραφή Προμήθειας</th>
			<td>#e(objection.procurement.cpv_name)#</td>
		</tr>
		<tr>
			<th>Ποσό Παραβόλου</th>
			<td>&euro; #e(DecimalFormat(objection.appeal_fee))#</td>
		</tr>
		<tr>
			<th>Διάρκεια έργου (μήνες)</th>
			<td>#e(objection.months_task)#</td>
		</tr>
		<tr>
			<th>Προϋπολογισμός Προκήρυξης (χωρίς ΦΠΑ)</th>
			<td>&euro; #e(DecimalFormat(objection.netbudget_proclamation))#</td>
		</tr>
		<tr>
			<th>Προϋπολογισμός Προσφυγής (χωρίς ΦΠΑ)</th>
			<td>&euro; #e(DecimalFormat(objection.netbudget_appeal))#</td>
		</tr>
		<tr>
			<th>ΦΠΑ</th>
			<td>#e(objection.vat.amount)#</td>
		</tr>
		<tr>
			<th>Τύπος Διαγωνισμού</th>
			<td>#e(objection.procedure.outline)#</td>
		</tr>
		<tr>
			<th>Έκταση Διαγωνισμού</th>
			<td>#e(objection.scope.template)#</td>
		</tr>
		<tr>
			<th>Κριτήριο Διαγωνισμού</th>
			<td>#e(objection.award.layout)#</td>
		</tr>
		<tr>
			<th>Είδος Διαγωνισμού</th>
			<td>#e(objection.citation.scheme)#</td>
		</tr>
		<tr>
			<th>Τύπος Προσβαλλόμενης</th>
			<td>#e(objection.demand.info)#</td>
		</tr>
		<tr>
			<th>Αίτημα Αναστολής</th>
			<td>#e(objection.interim.draw)#</td>
		</tr>
		
 	</tbody>
 </table>

#panelEnd()#

</cfoutput>