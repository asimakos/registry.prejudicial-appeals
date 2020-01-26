
<cfparam name="user">
<cfoutput>

	<td>

		#includePartial("/emails/header")#

		<div class="alert alert-block">

			<button type="button" class="close" data-dismiss="alert">×</button>

			<h3> H διαδικασία ανάκτησης κωδικού μόλις ξεκίνησε! </h3> <br> <b> Μπορείτε να συμπληρώσετε τον καινούργιο σας κωδικό με τον παρακάτω σύνδεσμο. </b> <br>

			#linkTo(route="recover",token=user.resetToken,class="alert alert-success")#

		</div>

	</td>

	#includePartial("/emails/footer")#

</cfoutput>

