<!--- User Index --->
<cfparam name="users">
<cfoutput>

#panel(title="Λίστα Χρηστών", class="mb-4")#

<script>

$(document).ready(function(){

	$(".deletelink").on("click", function(e){

		e.preventDefault();
        if (confirm('Επιθυμείτε να διαγραφεί αυτός ο χρήστης ?')){
	        
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

	<cfif users.recordcount>
		<table class="table table-sm">
			<thead>
				<tr>
					<th>Όνομα</th>
					<th>Επώνυμο</th>
					<th>Αναγνωριστικό</th>
					<th>e-Ταχυδρομείο</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="users">
					<cfif NOT users.admin>
						<tr>
							<td>
								#e(firstname)#
							</td>
							<td>
								#e(lastname)#
							</td>
							<td>
								#e(username)#
							</td>
							<td>
								#e(email)#
							</td>
						    <td class="text-right">
								<div class="btn-group">
									#linkTo(route="user", key=id, text="<i class='fa fa-eye'></i> Προβολή", class="btn btn-sm btn-info", encode=false)#
									#linkTo(route="editUser", key=id, text="<i class='fa fa-edit'></i> Επεξεργασία", class="btn btn-sm btn-primary", encode=false)#
						            #linkTo(text="<i class='fa fa-trash'></i> Διαγραφή",route="user",key=id,class="btn btn-sm btn-danger deletelink",encode=false)#
									
								</div>
						    </td>
					   </tr>
				   </cfif>
				</cfloop>
			</tbody>
		</table>
		#paginationLinks(route="users")#
	<cfelse>
		<div class="alert alert-info">
			<strong>Δυστυχώς </strong> δεν υπάρχουν διαθέσιμες εγγραφές!
		</div>
	</cfif>

#panelEnd()#

</cfoutput>
