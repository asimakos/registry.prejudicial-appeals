/**
 * This is the parent model file that all your models should extend.
 * You can add functions to this file to make them available in all your models.
 * Do not delete this file.
 */
component extends="wheels.Model" {

	private function sanitizeInput(string){
		local.rv = REReplaceNoCase(arguments.string, "<\ *[a-z].*?>", "", "all");
		local.rv = REReplaceNoCase(local.rv, "<\ */\ *[a-z].*?>", "", "all");
		local.rv = trim(htmleditFormat(local.rv));
		return local.rv;
	}


}
