 <!--- User Index --->
<cfparam name="enterprises">
<cfoutput>

#pageHeader(title="Επιχειρήσεις", btn=linkTo(route="newEnterprise", text="<i class='fa fa-plus'></i> Δημιουργία", class="btn btn-primary btn-xs", encode="attributes"))#

#includePartial("form/filter")#

#panel(title="Λίστα Επιχειρήσεων", class="mb-4")#

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

	<cfif enterprises.recordcount>
		<table class="table table-sm">
			<thead>
				<tr>
					<th>Πλήρης Επωνυμία</th>
					<th>Διακριτικός Τίτλος</th>
					<th>Διεύθυνση</th>
					<th>Δήμος</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="enterprises">
					<tr>
						<td>
							#e(full_name)#
						</td>
						<td>
							#e(title)#
						</td>
						<td>
							#e(address)#
						</td>
						<td>
							#e(name)#
						</td>
					    <td class="text-right">
							<div class="btn-group">
								#linkTo(route="enterprise", key=id, text="<i class='fa fa-eye'></i> Προβολή", class="btn btn-sm btn-info", encode=false)#
								#linkTo(route="editEnterprise", key=id, text="<i class='fa fa-edit'></i> Επεξεργασία", class="btn btn-sm btn-primary", encode=false)#
					            #linkTo(text="<i class='fa fa-trash'></i> Διαγραφή",route="enterprise",key=id,class="btn btn-sm btn-danger deletelink",encode=false)#
								
							</div>
					    </td>
				   </tr>
				</cfloop>
			</tbody>
		</table>
		#paginationLinks(route="enterprises", params="q=#params.q#")#
	<cfelse>
		<div class="alert alert-info">
			<strong>Δυστυχώς </strong> δεν υπάρχουν διαθέσιμες εγγραφές!
		</div>
	</cfif>

#panelEnd()#

</cfoutput>
