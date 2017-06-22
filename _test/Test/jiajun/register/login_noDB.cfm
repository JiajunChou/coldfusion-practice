               <cfif isDefined("FORM.submitted")>
	<cfif FORM.email EQ "itsme@webucator.com" AND password EQ "password">
		<cflocation url="index.cfm" addtoken="no">
	</cfif>
</cfif>
<cfparam name="FORM.email" default="">
<html>
<head>
<title>Login Page</title>
</head>
<body>

<h2>Log in</h2>
<cfoutput><form method="post" action="#CGI.SCRIPT_NAME#"></cfoutput>
<input type="hidden" name="submitted" value="true">
	<table>
	<tr>
		<td>Email:</td>
		<td><input type="text" name="email"
				value="<cfoutput>#FORM.email#</cfoutput>" size="40"></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td>
		<input type="password" name="password" size="14">
		</td>
	</tr>
	<tr>
		<td align="right" colspan="2">
		<input type="submit" value="Log in">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<br><a href="Register.cfm">Register</a>
		</td>
	</tr>
	</table>
</form>

</body>
</html>