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
<title>Add item manually</title>

<style type="text/css">
body {
	background:
		url('https://t4.ftcdn.net/jpg/00/62/71/85/240_F_62718590_nle5XU8jNJgy5QokGPat6h8TU6aWSOL6.jpg')
		fixed;
	background-size: cover;
}

input {
	width: 15%;
}

label, select {
	width: 10%;
}

.addItem {
	padding-top: 60px;
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

	<form role="form" action="AddItem" method="post">
		<div class="addItem" align="center">
			<p>
				<label for="firstName">Item Name:</label> <input type="text"
					id="itemname" name="itemname">
			</p>
			<br>
			<p>
				<label for="firstName">Price:</label> <input type="text" id="price"
					name="price">
			</p>
			<br>
			<p>
				<label for="firstName">Quantity:</label> <input type="text"
					id="quantity" name="quantity">
			</p>
			<br>
			<sql:setDataSource var="Inventory" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311" />

			<sql:query var="listUsers" dataSource="${Inventory}">
        SELECT * FROM Category_Table;
    </sql:query>

			<p>
				<label>Category:</label> <select name="Category_Table.Category_Name">
					<c:forEach var="Category_Table" items="${listUsers.rows}">
						<option value="${Category_Table.Category_Name}">${Category_Table.Category_Name}</option>
					</c:forEach>
				</select>
			</p>
		</div>
		<br>
		<div class="navbtn" align="center">
			<button class="btns">Add item</button>
			<button class="btns" >Back to Add page</button>
			<button class="btns" onclick="location.href='dashboard.jsp'">Home page</button>
		</div>
	</form>
</body>
<div id="footer"></div>
</html>