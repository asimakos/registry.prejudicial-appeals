<!--- Place HTML here that should be used as the default layout of your application. --->

<!DOCTYPE html>
<html lang="en">

	<head>
	  	<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	    <cfoutput>#csrfMetaTags()#</cfoutput>
	    <title>ΜΗΤΡΩΟ ΠΡΟΣΦΥΓΩΝ</title>
	    <meta name="description" content="CFWheels Application">
		  <!---
	          CSS
	          Include Bootstrap 4 and Font Awesome via CDN
	        Yes, I could technically put these all in a stylesheetLinkTag, but I think this is slightly more readable
	          Also include custom.css from /stylesheets/
	    --->
	    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
	    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" />
	    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	    <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" />
	    <cfoutput>#styleSheetLinkTag("kendo.common.min,kendo.default.min,kendo.mobile.all.min,kendo.rtl.min")#</cfoutput>
	    <script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script type="text/javascript">
			    jQuery.browser = {};
			    (function () {
			        jQuery.browser.msie = false;
			        jQuery.browser.version = 0;
			        if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
			            jQuery.browser.msie = true;
			            jQuery.browser.version = RegExp.$1;
			        }
			    })();
        </script>
    
	    <script type="text/javascript" src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	    <cfoutput>#javaScriptIncludeTag("angular.min,jszip.min,kendo.all.min")#</cfoutput>
	    
       
	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
		<link rel="icon" type="image/png" href="/icon/favicon.png">  
	</head>

    <body> 

		<cfoutput>

			#includePartial("/layout/navigation")#

			<div id="content" class="container">
				  <div class="pt-5">
				  	<cfif flashKeyExists("error")>
			            <div class="alert alert-danger" role="alert"> #flash("error")# </div>
	                <cfelseif flashKeyExists("success")> 
                        <div class="alert alert-success" role="alert"> #flash("success")# </div>
                    <cfelseif flashKeyExists("warning")> 
                        <div class="alert alert-warning" role="alert"> #flash("warning")# </div>
	                <cfelse>
	                    #flashMessages()#    
				    </cfif> 
					     <section class="pt-2">
							 #includeContent()#
						 </section>	
				  </div>
			</div>

		</cfoutput>

        
		<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>


    </body>

</html>

		