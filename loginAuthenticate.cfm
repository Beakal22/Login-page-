<cfset userId = "" />
<cfset userName = "" />
<cfset userRoles = "" />

<cfset objSecurity = CreateObject("component", "#Application.cfcPrefix#dbAccess.security") />

<cfset qsLogin = objSecurity.loginUser(form.userName, form.userpassword)  />
<cfset qsRoles = "" />

<cfif IsQuery(qsLogin) AND qsLogin.RecordCount>
	<cfset userId = qsLogin.userId />
	<cfset userName = qsLogin.FirstName & " " &  qsLogin.LastName />

	<!--- get roles --->
	<cfset qsRoles = objSecurity.getRoles(qsLogin.userId)  />

	<cfif IsQuery(qsRoles) AND qsRoles.RecordCount>
		<cfset userRoles = ValueList(qsRoles.Name) />
	</cfif>
</cfif>

<cfif userId GT 0>
	<cfset session.userId = userId />
	<cfset session.userName = userName />
	<cfset session.userRoles = userRoles />

	<cflocation url="../candidate/index.cfm" addtoken="no" />
</cfif>

<cflocation url="/" addtoken="no" />
