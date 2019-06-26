<cfinclude template="/#Application.sitePrefix#/layouts/layout_master_top.cfm" />

<div class="container">
   <form class="formLogin" action="loginAuthenticate.cfm" method ="post">
      <h2 class="form-signin-heading">Please sign in</h2>
      <br />

	  <!--- UserName --->
	  <label for="UserName" xclass="sr-only">User Name</label>
      <input type="text" id="UserName" name = "UserName" class="form-control" placeholder="UserName" style="width:300px;" required>

	  <br />

	  <!--- UserPassword --->
	  <label for="UserPassword" xclass="sr-only">Password</label>
      <input type="password" id="UserPassword" name="UserPassword" class="form-control" placeholder="Password" style="width:300px;" required>

	  <br />

	  <!--- sign in --->
      <button class="btn btn-lg btn-primary btn-block" type="submit" style="width:300px;">Sign in</button>
   </form>
</div>

<cfinclude template="/#Application.sitePrefix#/layouts/layout_master_bottom.cfm" />
