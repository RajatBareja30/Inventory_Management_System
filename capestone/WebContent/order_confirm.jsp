<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Confirmation</title>
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
	width: 10%;
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

<body>

<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection("jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
		   		+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311");
    %>
	<div class="split left" style="width: 100%;">
		<form role="form" method="post" action="Order_ItemServlet">
		<%
		String id=request.getParameter("id");
		String quantity = request.getParameter("quantity");
		Statement stat = connection.createStatement();
		PreparedStatement p1 = connection.prepareStatement("SELECT * FROM New_Items WHERE Item_ID = " + id);
		ResultSet rs = p1.executeQuery();
		while(rs.next()) {
		%>
		
				<input type = "hidden" name= "id" value= <%=id%>>
			<div>
				<p>
					<label for="Item">Item : <%=rs.getString("Item_Name")%></label>
					 <input type="hidden" value="<%=rs.getString("Item_Name")%>"
						id="ItemName"  name="Itemname" autofocus required/>
				</p>
			</div>
			
			<div>
				<p>
					<label for="curquantity">In_Stock : <%=rs.getString("Quantity")%></label>
					 <input type="hidden" value="<%=rs.getString("Quantity")%>"
						 autofocus required/>
				</p>
			</div>
			
			<div>
				<p>
					<label for="quantity">Add_more : </label> <input type="text"
						id="quantity"  name="quantity" autofocus required>
				</p>
			</div>
			<br>

			<div style="margin-left: 30px; display: inline-block;">
				 <button class="btns" >Confirm</button>
						 
			</div>

		</form>
				<button class="btns" onclick="location.href='order_item.jsp'">Back</button>
		<% }%> 
	</div>	
	

</body>
</html>