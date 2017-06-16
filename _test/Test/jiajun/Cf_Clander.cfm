<cfset dtThisMonth = CreateDate(Year(Now()),Month(Now()),1) />


<cfset dtThisMonth = dateAdd("m",0,dtThisMonth)>


<cfset dtLastDayOfMonth = (DateAdd( "m", 1, dtThisMonth ) -1) />
 
<cfset dtFirstDay = (dtThisMonth - DayOfWeek( dtThisMonth ) + 1) />
 
<cfset dtLastDay = (dtLastDayOfMonth + 7 - DayOfWeek( dtLastDayOfMonth )) />

<h2><cfoutput>#dateformat(dtThisMonth,"mmmm yyyy")#</cfoutput></h2>
<table width="100%" border="1">
<tr>
<th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th>
</tr>
 
<cfloop index="dtDay" from="#dtFirstDay#" to="#dtLastDay#" step="1">
 
<cfif ((DayOfWeek( dtDay ) MOD 7) EQ 1)>
    <tr class="days">
</cfif>

<cfif month(dtDay) eq month(dtThisMonth)>
    <cfset bgColor = '##FFFFFF'>
<cfelse>
    <cfset bgColor = '##DDDDDD'>
</cfif>
<cfoutput>
    <td bgColor="#bgColor#">#Day( dtDay )#</td>
</cfoutput>

<cfif NOT (DayOfWeek( dtDay ) MOD 7)>
</td>
</cfif>
 
</cfloop>
</table>