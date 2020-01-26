
<cfparam name="user">
<cfoutput>
	<td>
		

		#includePartial("/emails/header")#

		<div class="alert alert-block">

			<button type="button" class="close" data-dismiss="alert">×</button>

		    <h3> Ευχαριστούμε για την εγγραφή! </h3> <br> <b> Μπορείτε να επαληθεύσετε το email σας με τον παρακάτω σύνδεσμο. </b> <br>

			#linkTo(route="activate",activationCode=user.activationCode,class="alert alert-success")#

		</div>

	</td>

	#includePartial("/emails/footer")#

</cfoutput>

