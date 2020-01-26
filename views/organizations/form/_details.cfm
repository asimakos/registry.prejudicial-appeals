<cfoutput>
#panel(title="Στοιχεία Οργανισμού", class="mb-2")#
	<div class="row">
		<div class="col">
			#textField(objectName="organization", property="ful_name", label="Επωνυμία")#
		</div>
		<div class="col">
			#select(objectName="organization", property="kindid", options=kinds, label="Είδος")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#select(objectName="organization", property="sectionid", options=sections, label="Αντικείμενο")#
		</div>
		<div class="col">
			#select(objectName="organization", property="municipalid", options=municipals, label="Δήμος")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="organization", property="address", label="Διεύθυνση")#
        </div>
		<div class="col">
			#textField(objectName="organization", property="postcode", label="ΤΚ")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#select(objectName="organization", property="prefectureid", options=prefectures, label="Νομός")#
        </div>
		<div class="col">
			#select(objectName="organization", property="regionid", options=regions, label="Περιφέρεια")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="organization", property="telephone", label="Τηλέφωνο")#
        </div>
		<div class="col">
			#textField(objectName="organization", property="fax", label="Φάξ")#
		</div>
	</div>
	<div class="row">
		<div class="col">
			#textField(objectName="organization", property="email", label="e-Ταχυδρομείο")#
        </div>
	</div>
	
#panelEnd()#
</cfoutput>

