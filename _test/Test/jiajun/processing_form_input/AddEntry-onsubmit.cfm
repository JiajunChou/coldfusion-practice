<html>
<head>
  <title>Running Log</title>
</head>
<body>

<cfform name="RunningForm" method="post" action="" format="html">
<table>
<tr>
	<td>Date:</td>
	<td><cfinput type="text" name="date" size="20" required="yes" validate="date" validateat="onsubmit" message="You must enter a valid date."></td>
</tr>
<tr>
	<td>Distance:</td>
	<td><cfinput type="text" name="distance" size="20" required="yes" validate="float" validateat="onsubmit" message="You must enter a valid number for the distance."></td>
</tr>
<tr>
	<td>Time:</td>
	<td><cfinput type="text" name="time" size="20" required="yes" validate="regex" pattern="^\d{1,3}:\d{0,2}$" validateat="onsubmit" message="You must enter a valid time in the format mm:ss."></td>
</tr>
<tr>
	<td>Comments:</td>
	<td><cftextarea rows="3" cols="40" name="comments" required="yes" validate="maxlength" maxlength="50" validateat="onsubmit" message="The comment must be between 1 and 50 characters."></cftextarea></td>
</tr>
<tr>
	<td colspan="2" align="right">
		<cfinput type="submit" name="AddEntry" value="Add Entry">
	</td>
</tr>
</table>
</cfform>
</body>
</html>