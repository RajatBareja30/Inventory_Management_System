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
<title>Order item</title>
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
	padding: 15px;
}

th {
	text-align: left;
}

table {
	border-spacing: 5px;
	margin: 20px;
	width: 80%;
	height: 100px;
	overflow: scroll;
}

#tablediv1 {
	width: 45%;
	height: 350px;
	float: left;
	overflow: scroll;
	border: 1px solid #000;
}

#tablediv3 {
	width: 10%;
	float: left;
}

#tablediv2 {
	height: 350px;
	width: 45%;
	float: left;
	overflow: scroll;
	border: 1px solid #000;
}

.btns {
	margin: 30px;
	width: 13%;
}

#btn-order{
	margin : 5px;
	width :45%;
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
			PreparedStatement p1 = connection.prepareStatement("SELECT * FROM New_Items");
			
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

	<br>

	<div id="tablediv1">
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
			    ResultSet rs = p1.executeQuery();
				while (rs.next()) {
			%>

			<tr>
				<td><input type="checkbox" name="checkbox" value="checkbox"></td>
				<td><%=rs.getString("Item_Name")%></td>
				<td><%=rs.getString("Quantity")%></td>
			
			</tr>
			<%
				}
			%>
			
		</table>
	</div>

	<div id="tablediv3" align="center">
		<button>&#10140;</button>
	</div>

	<div id="tablediv2">
		<h3 align="center">
			<b>Order items</b>
		</h3>
		
		<table>
			<tr>
				<th>Name</th>
				
				<th>Place Order</th>
			</tr>
			
			<%
			    ResultSet rs1 = p1.executeQuery();
				while (rs1.next()) {
			%>
			
			<tr>
				<td><%=rs1.getString("Item_Name")%></td>
				
				<td><a href ="order_confirm.jsp?id=<%=rs1.getString("Item_ID")%>"> <button class="btns btn-success" id="btn-order"> Order </button></a></td>
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
		<button class="btns" onclick="location.href='dashboard.jsp'">Home page</button>
	</div>
</body>
<div id="footer"></div>
</html>