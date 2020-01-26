
<cfscript>

   mapper()

    .get(name="activate",pattern="activation/[activationCode]",to="activations##activate")
    .get(name="login", to="sessions##new")
    .get(name="logout", to="sessions##destroy")
    .post(name="authenticate", to="sessions##create") 

    .get(name="recover",pattern="recovery/[token]",to="passwordresets##retrieve")
    .put(name="resetpassword",pattern="reset/[token]",to="passwordresets##update")
    .get(name="forgot", to="passwordresets##new")
    .post(name="forgot", to="passwordresets##create")

	.root(to="main##index", method="get")
    
    .namespace("api")
		.resources(name="cpvs")
	.end()
   
    .resources(name="users")
	.resources(name="organizations")
	.resources(name="enterprises")
	.resources(name="objections")

   .end();

</cfscript>
