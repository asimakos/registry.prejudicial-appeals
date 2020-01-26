
 <cfif structKeyExists(session,"currentUser")>

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href="#">
  	  <img src="/icon/gavel.png" alt="logo">
    </a>

    <!-- Links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <cfoutput>
          #linkTo(route="enterprises", class="nav-link", text="Επιχειρήσεις")#
        </cfoutput>
      </li>
      <li class="nav-item">
        <cfoutput>
          #linkTo(route="organizations", class="nav-link", text="Οργανισμοί")#
        </cfoutput>
      </li>
      <li class="nav-item">
        <cfoutput>
          #linkTo(route="objections", class="nav-link", text="Προσφυγές")#
        </cfoutput>
      </li>
      <cfif session.currentUser.admin IS NOT 0>
        <li class="nav-item">
          <cfoutput>
            #linkTo(route="users", class="nav-link", text="<span class='fas fa-users'></span> Χρήστες",encode="attributes")#
          </cfoutput>
        </li>
      </cfif>
      <li class="nav-item">
        <cfoutput>
          #linkTo(route="logout", class="nav-link", text="<span class='fas fa-user-times'></span> Αποσύνδεση",encode="attributes")#
        </cfoutput>
      </li>
    </ul>
  </nav>

</cfif>