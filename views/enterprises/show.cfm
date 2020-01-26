<cfparam name="enterprise">
<cfoutput>
#pageHeader(title=enterprise.full_name,  btn=linkTo(route="enterprises", text="<i class='fa fa-chevron-left'></i> Επιστροφή", class="btn btn-info btn-xs", encode="attributes"))#


#panel(title="Στοιχεία", class="mb-4")#

<table class="table table-sm">
	<tbody>
		<tr>
			<th>Πλήρης Επωνυμία</th>
			<td>#e(enterprise.full_name)#</td>
		</tr>
		<tr>
			<th>Διακριτικός Τίτλος</th>
			<td>#e(enterprise.title)#</td>
		</tr>
		<tr>
			<th>ΑΦΜ</th>
			<td>#e(enterprise.tax_number)#</td>
		</tr>
		<tr>
			<th>Είδος εταιρείας</th>
			<td>#e(enterprise.type.designation)#</td>
		</tr>
		<tr>
			<th>Έτος Σύστασης</th>
			<td>#e(enterprise.year)#</td>
		</tr>
		<tr>
			<th>Δήμος</th>
			<td>#e(enterprise.municipal.name)#</td>
		</tr>
		<tr>
			<th>Διεύθυνση</th>
			<td>#e(enterprise.address)#</td>
		</tr>
		<tr>
			<th>ΤΚ</th>
			<td>#e(enterprise.postcode)#</td>
		</tr>
		<tr>
			<th>Νομός</th>
			<td>#e(enterprise.prefecture.description)#</td>
		</tr>
		<tr>
			<th>Περιφέρεια</th>
			<td>#e(enterprise.region.appellation)#</td>
		</tr>
		<tr>
			<th>Χώρα</th>
			<td>#e(enterprise.country)#</td>
		</tr>
		<tr>
			<th>Τηλέφωνο</th>
			<td>#e(enterprise.telephone)#</td>
		</tr>
		<tr>
			<th>Φάξ</th>
			<td>#e(enterprise.fax)#</td>
		</tr>
		<tr>
			<th>e-Ταχυδρομείο</th>
			<td><a href="mailto:#e(enterprise.email)#">#e(enterprise.email)#</a></td>
		</tr>
 	</tbody>
 </table>

#panelEnd()#

</cfoutput>