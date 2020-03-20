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
<title>Add_Category</title>

<meta charset="ISO-8859-1">
<style>
body {
	background:
		url('https://t4.ftcdn.net/jpg/00/62/71/85/240_F_62718590_nle5XU8jNJgy5QokGPat6h8TU6aWSOL6.jpg')
		fixed;
	background-size: cover;
}

.vl {
	border-left: 2px solid gray;
	position: fixed;
	left: 50%;
	margin-left: -3px;
	top: 0;
	bottom: 0;
}

#navigation1 {
	width: 1163px;
	height: 55px;
	margin-left: 0px;
	margin-right: 0px;
	margin-top: 0px;
	border: none;
	border-collapse: collapse;
}

#navigation2 {
	width: 1163px;
	height: 45px;
	margin-left: 0px;
	margin-right: 0px;
	border-collapse: collapse;
}

#body {
	
}

.btns {
	margin-left: 100px;
	width: 10%;
}

.dropdown {
	margin-right: 50px;
	margin-left: 10px;
}

#search {
	width: 400px;
	margin-left: 10px;
}

.date {
	margin-right: 300px;
	height: 23px;
}

.btns:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
	background-color: light-gray;
}

.split {
	height: 100%;
	width: 50%;
	position: fixed;
	z-index: 1;
	top: 0;
	overflow-x: hidden;
	padding-top: 60px;
}

.left {
	left: 0;
}

.right {
	right: 0;
}

hr {
	border-color: black;
}

#footer {
	position: fixed;
	bottom: 0;
}

.right-div {
	margin-left: 20px;
	border: 1px solid #000;
	font-family: arial;
	width: 500px;
	list-style: none;
	max-height: 350px;
	overflow: auto;
	text-indent: 10px;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 1000px;
	margin-left: 50px;
	margin-right: 50px;
	margin-bottom: 20px;
}

td, th {
	border: 1px solid black;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
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
	<form role="form" action="AddCategoryServlet" method="post">
		<div id="navigation1">


			Category : <input id="search" type="text" placeholder="Add Category"
				name="addcategory">
			<button class="btns">Add</button>

			<button class="btns"onclick="location.href='dashboard.jsp'">Home Page</button>

		</div>

		<div id="navigation2"></div>

		<div id="body">
			<sql:setDataSource var="Inventory" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311" />

			<sql:query var="listUsers" dataSource="${Inventory}">
        SELECT * FROM Category_Table;
    </sql:query>

			<table border="1">

				<tr>
					<th>Category</th>

				</tr>
				<c:forEach var="Category_Table" items="${listUsers.rows}">
					<tr>
						<td><c:out value="${Category_Table.Category_Name}" /></td>
					</tr>
				</c:forEach>
			</table>

		</div>

		<div id="footer"></div>
	</form>
</body>

</html>
