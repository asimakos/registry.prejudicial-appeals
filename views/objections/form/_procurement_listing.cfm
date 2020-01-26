
<script>

	$(document).ready(function(){


		$("#procurementid").kendoComboBox({
		  dataSource: {
                        transport: {
                                read: {
                                    dataType: "json",
                                    url: "http://127.0.0.1:51576/index.cfm/api/cpvs",
                                   }
                            }
                      },
		  dataTextField: "text",
		  dataValueField: "value",
		});


	});
	   
</script>
<cfoutput>
<div class="form-group">
    <label for="procurementid">Αριθμός Προμήθειας</label><br>
    <input class="form-control" id="procurementid" name="procurementid" value=#params.procurementid# />
</div>
</cfoutput>