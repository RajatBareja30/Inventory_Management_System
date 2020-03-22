<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>Remove items</title>

<style type="text/css">
body {
	background:
		url('https://t4.ftcdn.net/jpg/00/62/71/85/240_F_62718590_nle5XU8jNJgy5QokGPat6h8TU6aWSOL6.jpg')
		fixed;
	background-size: cover;
}

.nav1 {
	margin-left: 20px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: center;
	
}


table {
	border-spacing: 5px;
	margin: 20px;
	width: 90%;
	height: 100px;
	overflow: scroll;
}

.tablediv {
	margin: 20px;
	width: 60%;
	height: 350px;
	overflow: scroll;
	border: 1px solid #000;
}

#remove{
	margin : 0px;
	width : 65px;
}

.btns {
	margin: 30px;
	width: 13%;
}

.btns:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
	background-color: light-gray;
}

input {
	width: 35px;
}
</style>
</head>

<script>
	$(document).ready(function() {
		$('#footer').load("footer.jsp")
		$('#header').load("header.jsp")

	});
</script>
<div id="header"></div>
<body>

	<%
		try {
			String search = request.getParameter("q");
			Class.forName("com.mysql.jdbc.Driver");
			//connection = DriverManager.getConnection(CREDENTIAL_STRING);
			Connection connection = DriverManager.getConnection(
					"jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
							+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311");
			PreparedStatement p1 = connection
					.prepareStatement("SELECT * FROM New_Items");
			ResultSet rs = p1.executeQuery();
	%>

	<div class="nav1">
		<p>
			Please select the category: <select>
				<option value="select date">select</option>
				<option value="date">category1</option>
				<option value="date">category2</option>
				<option value="date">category3</option>
			</select>
		</p>

	</div>

	<div class="tablediv">
		<h3 align="center">
			<b>In stock items</b>
		</h3>
		<table>
			<tr>
				
				<th>Select</th>
				<th>Name</th>
				<th>Current <br> quantity
				</th>
			</tr>

			<%
				while (rs.next()) {
			%>

			<tr>
				<td><a href = "item_delete.jsp?id=<%=rs.getString("Item_ID")%>"><button class="btns btn-danger" id = "remove"> Remove </button></a></td>
				<td><%=rs.getString("Item_Name")%></td>
				<td><%=rs.getString("Quantity")%></td>
			
			</tr>
			<%
				}
			%>

		</table>


	</div>
	<%
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	
	
	
	<div class="nav2">
		<button class="btns" onclick="location.href='Employee_item_check.jsp'">Check Inventory</button>
		<button class="btns" onclick="location.href='dashboard.jsp'">Home page</button>
	</div>
	
</body>
<div id="footer"></div>
</html>