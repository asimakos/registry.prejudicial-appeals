<cfoutput>
#panel(title="Στοιχεία Επιχείρησης", class="mb-2")#
	<div class="row">
		<div class="col">
			#textField(objectName="enterprise", property="full_name", label="Πλήρης Επωνυμία")#
		</div>
		<div class="col">
			#textField(objectName="enterprise", property="title", label="Διακριτικός Τίτλος")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="enterprise", property="tax_number", label="ΑΦΜ")#
		</div>
		<div class="col">
			#select(objectName="enterprise", property="typeid", options=types, label="Είδος εταιρείας")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="enterprise", property="year", label="Έτος Σύστασης")#
        </div>
        <div class="col">
			#select(objectName="enterprise", property="municipalid", options=municipals, label="Δήμος")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="enterprise", property="address", label="Διεύθυνση")#
		</div>
		<div class="col">
			#textField(objectName="enterprise", property="postcode", label="ΤΚ")#
        </div>
	</div>
	<div class="row">
		<div class="col">
			#select(objectName="enterprise", property="prefectureid", options=prefectures, label="Νομός")#
        </div>
		<div class="col">
			#select(objectName="enterprise", property="regionid", options=regions, label="Περιφέρεια")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="enterprise", property="country", label="Χώρα")#
		</div>
		<div class="col">
			#textField(objectName="enterprise", property="telephone", label="Τηλέφωνο")#
        </div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="enterprise", property="fax", label="Φάξ")#
		</div>
		<div class="col">
			#textField(objectName="enterprise", property="email", label="e-Ταχυδρομείο")#
        </div>
	</div>
	
#panelEnd()#
</cfoutput>

