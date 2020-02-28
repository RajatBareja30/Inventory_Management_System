<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Damaged items</title>
<style type="text/css">
body {
	background:
		url('https://t4.ftcdn.net/jpg/00/62/71/85/240_F_62718590_nle5XU8jNJgy5QokGPat6h8TU6aWSOL6.jpg')
		fixed;
	background-size: cover;
}

.dropdown {
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
	width: 90%;
	height: 100px;
	overflow: scroll;
}

.tablediv {
	margin: 20px;
	width: 70%;
	height: 350px;
	overflow: scroll;
	border: 1px solid #000;
}

.btns {
	margin: 30px;
	width: 10%;
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
	<div class="dropdown">
		<p>
			List of damaged items: <select>
				<option value="select date">select date</option>
				<option value="date">date1</option>
				<option value="date">date2</option>
				<option value="date">date3</option>
			</select>
		</p>
	</div>

	<div class="tablediv">
		<table>
			<tr>
				<th>Name</th>
				<th>Quantity</th>
				<th>Select</th>
			</tr>
			<tr>
				<td>item1</td>
				<td>4</td>
				<td><input type="checkbox" name="checkbox" value="checkbox"></td>
			</tr>
			<tr>
				<td>item2</td>
				<td>5</td>
				<td><input type="checkbox" name="checkbox" value="checkbox"></td>
			</tr>
			<tr>
				<td>item1</td>
				<td>4</td>
				<td><input type="checkbox" name="checkbox" value="checkbox"></td>
			</tr>
			<tr>
				<td>item2</td>
				<td>5</td>
				<td><input type="checkbox" name="checkbox" value="checkbox"></td>
			</tr>
			<tr>
				<td>item1</td>
				<td>4</td>
				<td><input type="checkbox" name="checkbox" value="checkbox"></td>
			</tr>
			<tr>
				<td>item2</td>
				<td>5</td>
				<td><input type="checkbox" name="checkbox" value="checkbox"></td>
			</tr>
		</table>
	</div>

	<div>
		<button class="btns">Delete</button>
		<button class="btns">Home page</button>
		<br>
	</div>

</body>
<div id="footer"></div>
</html>