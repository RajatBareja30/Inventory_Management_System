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
<title>Edit Employee </title>
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

	<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection("jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
		   		+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311");
    %>
	<div class="split left" style="width: 100%;">
		<form role="form" method="post" action="EmployeeEditServlet">
		<%
		String id=request.getParameter("id");
		Statement stat = connection.createStatement();
		PreparedStatement p1 = connection.prepareStatement("SELECT * FROM Employee_Registration WHERE Employee_ID = " + id);
		ResultSet rs = p1.executeQuery();
		while(rs.next()) {
		%>
		
				<input type = "hidden" name= "id" value= <%=id%>>
			<div>
				<p>
					<label for="firstName">First Name*</label> <input type="text" value="<%=rs.getString("First_Name")%>"
						id="firstName" placeholder="First Name" name="firstname"
						title="only alphabets" pattern="[a-zA-Z]+" autofocus required>
				</p>
			</div>

			<div>
				<p>
					<label for="lastName">Last Name*</label> <input type="text" value="<%=rs.getString("Last_Name")%>"
						id="lastName" placeholder="Last Name" name="lastname"
						title="only alphabets" pattern="[a-zA-Z]+" autofocus required>
				</p>
			</div>

			<div>
				<p>
					<label for="email">Email* </label> <input type="email" id="email" value="<%=rs.getString("Email")%>"
						placeholder="Email" name="email"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
						title="abc@email.com" required>
				</p>
			</div>

			<div>
				<p>
					<label for="password">Password*</label> <input type="password" value="<%=rs.getString("Password")%>"
						id="password" placeholder="Password" name="password"
						title="6-12 characters, at least one uppercase letter, one lowercase letter and one number "
						required>
				</p>
			</div>

			<div>
				<p>
					<label for="password">Confirm Password*</label> <input
						type="password" id="confirm_password" placeholder="Password" value="<%=rs.getString("Password")%>"
						name="passConfirm"
						title="6-12 characters, at least one uppercase letter, one lowercase letter and one number "
						required>
				</p>
			</div>

			<div>
				<p>
					<label for="phoneNumber">Phone number </label> <input type="text" value="<%=rs.getString("Phone")%>"
						id="phoneNumber" placeholder="Phone number" name="phone" required>
				</p>
			</div>


			<div>
				<p>
					<label>Gender</label>
				<div>

					<input type="radio" id="femaleRadio" value="Female" name="gender" value="<%=rs.getString("Gender")%>"
						style="width: 5%; margin-left: 20px;">Female <input
						type="radio" id="maleRadio" value="Male" name="gender" value="<%=rs.getString("Gender")%>"
						style="width: 5%; margin-left: 20px;">Male

				</div>
			</div>

			<br>

			<div style="margin-left: 30px; display: inline-block;">
				 <button class="btns" >Save</button>
						 
			</div>

		</form>
				<button class="btns" onclick="location.href='registration.jsp'">Home</button>
		<% }%> 
	</div>	
	
	
	
</body>

<div id="footer"></div>

</html>


