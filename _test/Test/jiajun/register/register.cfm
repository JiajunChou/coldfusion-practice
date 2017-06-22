<html>
<head>
<title>Register</title>
</head>
<body>

<cfif NOT isDefined("FORM.submitted")>

	<h2>Registration Form</h2>
	<cfoutput><form method="post" action="#CGI.SCRIPT_NAME#"></cfoutput>
	<input type="hidden" name="submitted" value="true">
	<table>
	<tr>
		<td>Email:</td>
		<td>
			<input type="text" name="email" size="30">
		</td>
	</tr>
	<tr>
		<td>Password:</td>
		<td>
			<input type="password" name="password" size="10">
		</td>
	</tr>
	<tr>
		<td>Repeat Password:</td>
		<td>
			<input type="password" name="password2" size="10">
		</td>
	</tr>
	<tr>
		<td>First name:</td>
		<td>
			<input type="text" name="firstname" size="10">
		</td>
	</tr>
	<tr>
		<td>Last name:</td>
		<td>
			<input type="text" name="lastname" size="10">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Register">
		</td>
	</tr>
	</table>
	</form>
<cfelse>

<!---
	Write an if statement that checks to make
	sure the passwords are the same.
--->
	<cfif WRITE_CONDITION_HERE>
		<!---
			Write a query that inserts the new record
			into the Users table. The fields in the
			database have the same names as those in
			the form: firstname, lastname, email, password
		--->
		<cfquery datasource="Runners">
		
		</cfquery>
		You have registered successfully.
			<p><a href="index.cfm">Home Page</a></p>
	<cfelse>
		<p class="errors"><b>Your passwords
		do not match. Please <a href=
		"Register.cfm">try again</a>.</p>
	</cfif>
</cfif>

</body>
</html>