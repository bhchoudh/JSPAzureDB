<%@ page language="java" contentType="text/html; charset = ISO-8859-1" 
    import = "java.sql.*" 
%>

<html> 
<head> <title>SQL Azure via JDBC Main Form</title> </head> 
<body> 

<form action = "Database.jsp">
<table>
<tr>
	<td>Database User id</td>
	<td><input type="text" name="DBUserId" id="DBUserId" /> </td>
</tr>
<tr>
	<td>Database Password</td>
	<td><input type="text" name="DBPassword" id="DBPassword" /> </td> 
</tr>
<tr>
	<td>Database Name</td>
	<td><input type="text" name="DBName" id="DBName" /> </td>
</tr>
<tr>
	<td>SQL Server</td>
	<td><input type="text" name="DBServer" id="DBServer" /> </td>
</tr>
	
</table>
<input type="submit" name="Submit" id="Submit" value="Submit" />

<br/>
</form>
</body> 
</html>
