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
<title>POS System</title>

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

.btns {
	margin: 10px;
	width: 15%;
	float: left;
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
	overflow-x: hidden;
	
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
	width: 400px;
	margin: 20px;
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
<body>
	<div class="vl"></div>

	<div id="header"></div>

	<div class="split left" style="width: 50%;">

		<div></div>
		<div>
			<button class="btns">SELL</button>
			<button class="btns">Damage</button>
			<br>
			<button class="btns">Review</button>
			<button class="btns">Clear</button>
			<br>
		</div>
	</div>

	<div class="split right">
		<h3 align="center">
			<select class="dropdown">
				<option value="Smokes">Smokes</option>
				<option value="Dairy">Dairy</option>
				<option value="Gums">Gums</option>
				<option value="Chocolate">Chocolate</option>
				<option value="Stationary">Stationary</option>
				<option value="Lottery">Lottery</option>
				<option value="Health">Health</option>
				<option value="Chips">Chips</option>
			</select>
		</h3>
		<hr>
		<div class="right-div">
			<table>
				<tr>
					<th>Item_Name</th>
					<th>Quantity</th>

				</tr>
				<tr>
					<td>Vitamin Water</td>
					<td>2</td>

				</tr>
				<tr>
					<td>Excel</td>
					<td>2</td>

				</tr>
				<tr>
					<td>Minute maid</td>
					<td>2</td>

				</tr>
				<tr>
					<td>Belmont</td>
					<td>2</td>

				</tr>
				<tr>
					<td>Black-ice AirFresh</td>
					<td>2</td>

				</tr>
				<tr>
					<td>Cadbury</td>
					<td>2</td>

				</tr>
			</table>
		</div>

	</div>

</body>
<div id="footer"></div>
</html>
