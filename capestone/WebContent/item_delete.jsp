<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Delete</title>
</head>
<body>
	
	<%
	String id=request.getParameter("id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
		   		+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311");
	
	Statement stat = connection.createStatement();
	//PreparedStatement p1 = connection.prepareStatement("");
	int i = stat.executeUpdate("DELETE FROM New_Items WHERE Item_ID = " + id);
	request.getRequestDispatcher("remove_items.jsp").include(request, response);	
    %>
	
	
	



</body>
</html>