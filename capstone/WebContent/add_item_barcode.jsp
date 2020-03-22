<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>Add item through scanner</title>
<style type="text/css">
body{
	background: url('https://t4.ftcdn.net/jpg/00/62/71/85/240_F_62718590_nle5XU8jNJgy5QokGPat6h8TU6aWSOL6.jpg') fixed;
	background-size: cover;
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
  margin:20px;
  width:95%;
  height:100px;
  overflow:scroll;
}

.tablediv{
  margin:20px;
  width:90%;
  height:350px;
  overflow:scroll;
  border:1px solid #000;
}

.btns{
  margin:30px;
  width: 13%;
}

.btns:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  background-color: light-gray;
}

input{
	width:35px;
}

</style>
</head>
<script>
$(document).ready(function(){
	   $('#footer').load("footer.jsp")
	   $('#header').load("header.jsp")

	});
</script>
<div id="header"></div>
<body>
<div class="tablediv">
<table>
  <tr>
    <th>Select</th>
    <th>Name</th>
    <th>Price</th>
    <th>Current <br> quantity</th>
    <th>Category</th>
  </tr>
  <tr>
    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td>item1</td>
    <td><input type="text" name="price" value=""></td>
    <td><input type="text" name="quantity" value=""></td>
    <td><select>
  		<option value="select date">select</option>
  		<option value="date">category1</option>
  		<option value="date">category2</option>
  		<option value="date">category3</option>
	</select></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td>item2</td>
    <td><input type="text" name="price" value=""></td>
    <td><input type="text" name="quantity" value=""></td>
    <td><select>
  		<option value="select date">select</option>
  		<option value="date">category1</option>
  		<option value="date">category2</option>
  		<option value="date">category3</option>
	</select></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td>item3</td>
    <td><input type="text" name="price" value=""></td>
    <td><input type="text" name="quantity" value=""></td>
    <td><select>
  		<option value="select date">select</option>
  		<option value="date">category1</option>
  		<option value="date">category2</option>
  		<option value="date">category3</option>
	</select></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td>item4</td>
    <td><input type="text" name="price" value=""></td>
    <td><input type="text" name="quantity" value=""></td>
    <td><select>
  		<option value="select date">select</option>
  		<option value="date">category1</option>
  		<option value="date">category2</option>
  		<option value="date">category3</option>
	</select></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td>item5</td>
    <td><input type="text" name="price" value=""></td>
    <td><input type="text" name="quantity" value=""></td>
    <td><select>
  		<option value="select date">select</option>
  		<option value="date">category1</option>
  		<option value="date">category2</option>
  		<option value="date">category3</option>
	</select></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td>item6</td>
    <td><input type="text" name="price" value=""></td>
    <td><input type="text" name="quantity" value=""></td>
    <td><select>
  		<option value="select date">select</option>
  		<option value="date">category1</option>
  		<option value="date">category2</option>
  		<option value="date">category3</option>
	</select></td>
  </tr>
</table>
</div>

<div class="nav2">
<button class="btns">Add manually</button>
<button class="btns">Save</button>
<button class="btns">Commit to inventory</button>
<button class="btns">Delete item</button>
<button class="btns">Home page</button>
</div>

</body>
<div id="footer"></div>
</html>