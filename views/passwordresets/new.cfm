
<cfoutput>
<div class="row">
  <div class="col-md-6 offset-md-3">
    #panel(title="Ανάκτηση κωδικού χρήστη")#
    #startFormTag(route="forgot")#
    #textFieldTag(name="email", label="e-Ταχυδρομείο")#
    #submitTag(value="Αποστολή", class="btn btn-block btn-primary")#
    #endFormTag()#
    <p class="mt-2"> #linkTo(route="login", text="<i class='fa fa-chevron-left'></i> Άκυρο", class="btn btn-info btn-xs", encode="attributes")# </p>
  </div>
</div>
</cfoutput>