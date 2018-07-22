<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import = "java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head> <title>SQL Azure via JDBC</title> </head> 
<body> 
<h1>IOT Device Data Output </h1> 

<% 
try
{ 
	String srvname= request.getParameter("DBServer");
	String user= request.getParameter("DBUserId");
	String pwd= request.getParameter("DBPassword");
	String dbname= request.getParameter("DBName");
		
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
    String connectstring = "jdbc:sqlserver://"+srvname+".database.windows.net:1433;"
							+"database="+dbname+";"
							+"user="+user+"@"+srvname+";"
							+"password="+pwd;
     
	out.println(connectstring);						
    Connection con = DriverManager.getConnection(connectstring); 
    String SQL = "SELECT * FROM dbo.tbl_IOT"; 
    Statement stmt = con.createStatement(); 
    ResultSet rs = stmt.executeQuery(SQL);

    while (rs.next()) 
    { 
        out.print(rs.getString(1) + "-- " + rs.getString(2) + "<br/>"); 
    } 
}catch(Exception e){ 
        out.print("Error message: "+ e.getMessage()); 
} 
%> 
</body>
</html>
