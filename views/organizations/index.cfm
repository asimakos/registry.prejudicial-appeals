<!--- User Index --->
<cfparam name="organizations">
<cfoutput>

#pageHeader(title="Οργανισμοί", btn=linkTo(route="newOrganization", text="<i class='fa fa-plus'></i> Δημιουργία", class="btn btn-primary btn-xs", encode="attributes"))#

#includePartial("form/filter")#

#panel(title="Λίστα Οργανισμών", class="mb-4")#

<script>

$(document).ready(function(){

	$(".deletelink").on("click", function(e){

		e.preventDefault();
        if (confirm('Επιθυμείτε να διαγραφεί αυτή η εγγραφή?')){
	        
			var targetUrl = $(this).attr("href");
			var csrftoken = $('meta[name=csrf-token]').attr("content");

			$.ajax({
		    	url: targetUrl ,
			    type: 'DELETE',
			    data: {
			    	authenticityToken: csrftoken
			    },
			    success: function(result) {
			        // Refresh page
			        location.reload(); 
			    }
			});			
	    }	
	});
});
</script>

	<cfif organizations.recordcount>
		<table class="table table-sm">
			<thead>
				<tr>
					<th>Επωνυμία</th>
					<th>Αντικείμενο</th>
					<th>Διεύθυνση</th>
					<th>Δήμος</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="organizations">
					<tr>
						<td>
							#e(ful_name)#
						</td>
						<td>
							#e(class)#
						</td>
						<td>
							#e(address)#
						</td>
						<td>
							#e(name)#
						</td>
					    <td class="text-right">
							<div class="btn-group">
								#linkTo(route="organization", key=id, text="<i class='fa fa-eye'></i> Προβολή", class="btn btn-sm btn-info", encode=false)#
								#linkTo(route="editOrganization", key=id, text="<i class='fa fa-edit'></i> Επεξεργασία", class="btn btn-sm btn-primary", encode=false)#
					            #linkTo(text="<i class='fa fa-trash'></i> Διαγραφή",route="organization",key=id,class="btn btn-sm btn-danger deletelink",encode=false)#
								
							</div>
					    </td>
				   </tr>
				</cfloop>
			</tbody>
		</table>
		#paginationLinks(route="organizations", params="q=#params.q#")#
	<cfelse>
		<div class="alert alert-info">
			<strong>Δυστυχώς </strong> δεν υπάρχουν διαθέσιμες εγγραφές!
		</div>
	</cfif>

#panelEnd()#

</cfoutput>
