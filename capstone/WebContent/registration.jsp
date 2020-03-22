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
<title>Registration page</title>
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

input {
	width: 20%;
	margin-left: 20px;
}

form label {
	width: 10%;
	margin-left: 20px;
}

.btns {
	margin: 10px;
}

.btns:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
	background-color: light-gray;
}

table {
	width : 500px;
}

th, td {
	text-align: center;
}

.tablediv{
	margin-left: 20px;
	height: 350px;
	width: 600px;
	float: left;
	overflow: scroll;
	border: 1px solid #000;
	padding: 20px;
}



</style>
</head>
<script>
	$(document).ready(function() {
		$('#header').load("header.jsp")
		$('#footer').load("footer.jsp")
	});
</script>
<div id="header"></div>
<body>

	<div class="vl"></div>

	<div class="split left" style="width: 100%;">
		<form role="form" action="RegistrationServlet" method="post">

			<div>
				<p>
					<label for="firstName">First Name*</label> <input type="text"
						id="firstName" placeholder="First Name" name="firstname"
						title="only alphabets" pattern="[a-zA-Z]+" autofocus required>
				</p>
			</div>

			<div>
				<p>
					<label for="lastName">Last Name*</label> <input type="text"
						id="lastName" placeholder="Last Name" name="lastname"
						title="only alphabets" pattern="[a-zA-Z]+" autofocus required>
				</p>
			</div>

			<div>
				<p>
					<label for="email">Email* </label> <input type="email" id="email"
						placeholder="Email" name="email"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
						title="abc@email.com" required>
				</p>
			</div>

			<div>
				<p>
					<label for="password">Password*</label> <input type="password"
						id="password" placeholder="Password" name="password"
						title="6-12 characters, at least one uppercase letter, one lowercase letter and one number "
						required>
				</p>
			</div>

			<div>
				<p>
					<label for="password">Confirm Password*</label> <input
						type="password" id="confirm_password" placeholder="Password"
						name="passConfirm"
						title="6-12 characters, at least one uppercase letter, one lowercase letter and one number "
						required>
				</p>
			</div>

			<div>
				<p>
					<label for="phoneNumber">Phone number </label> <input type="text"
						id="phoneNumber" placeholder="Phone number" name="phone" required>
				</p>
			</div>


			<div>
				<p>
					<label>Gender</label>
				<div>

					<input type="radio" id="femaleRadio" value="Female" name="gender"
						style="width: 5%; margin-left: 20px;">Female <input
						type="radio" id="maleRadio" value="Male" name="gender"
						style="width: 5%; margin-left: 20px;">Male

				</div>
			</div>

			<br>

			<div style="margin-left: 30px; display: inline-block;">
				<button class="btns">Sign up</button>
				<button class="btns" onclick="location.href='registration.jsp'">Save</button>
				<button class="btns" onclick="location.href='dashboard.jsp'">Home</button>	 
			</div>

		</form>
				
		
	</div>

	<div class="split right">
		<h3 align="center">
			<b> List of employees </b>
		</h3>
		<hr>
		<%
				try {
					String search = request.getParameter("q");
					Class.forName("com.mysql.jdbc.Driver");
					//connection = DriverManager.getConnection(CREDENTIAL_STRING);
					Connection connection = DriverManager.getConnection(
							"jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
									+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311");
					PreparedStatement p1 = connection
							.prepareStatement("SELECT * FROM Employee_Registration");
					ResultSet rs = p1.executeQuery();
			%>
	<div class="tablediv">
		<table border="1">

			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<%
					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString("First_Name")%></td>
					<td><%=rs.getString("Last_Name")%></td>
					<td><a href = "employee_edit.jsp?id=<%=rs.getString("Employee_ID")%>"> <button class="btns btn-warning"> Edit </button></a></td>
					<td><a href = "employee_delete.jsp?id=<%=rs.getString("Employee_ID")%>"> <button class="btns btn-danger" > Delete </button></a></td>
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
	</div>
</body>
<div id="footer"></div>

</html>