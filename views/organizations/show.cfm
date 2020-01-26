<cfparam name="organization">
<cfoutput>
#pageHeader(title=organization.ful_name,  btn=linkTo(route="organizations", text="<i class='fa fa-chevron-left'></i> Επιστροφή", class="btn btn-info btn-xs", encode="attributes"))#


#panel(title="Στοιχεία", class="mb-4")#

<table class="table table-sm">
	<tbody>
		<tr>
			<th>Επωνυμία</th>
			<td>#e(organization.ful_name)#</td>
		</tr>
		<tr>
			<th>Είδος</th>
			<td>#e(organization.kind.category)#</td>
		</tr>
		<tr>
			<th>Αντικείμενο</th>
			<td>#e(organization.section.class)#</td>
		</tr>
		<tr>
			<th>Διεύθυνση</th>
			<td>#e(organization.address)#</td>
		</tr>
		<tr>
			<th>ΤΚ</th>
			<td>#e(organization.postcode)#</td>
		</tr>
		<tr>
			<th>Δήμος</th>
			<td>#e(organization.municipal.name)#</td>
		</tr>
		<tr>
			<th>Νομός</th>
			<td>#e(organization.prefecture.description)#</td>
		</tr>
		<tr>
			<th>Περιφέρεια</th>
			<td>#e(organization.region.appellation)#</td>
		</tr>
		<tr>
			<th>Τηλέφωνο</th>
			<td>#e(organization.telephone)#</td>
		</tr>
		<tr>
			<th>Φάξ</th>
			<td>#e(organization.fax)#</td>
		</tr>
		<tr>
			<th>e-Ταχυδρομείο</th>
			<td><a href="mailto:#e(organization.email)#">#e(organization.email)#</a></td>
		</tr>
 	</tbody>
 </table>

#panelEnd()#

</cfoutput>