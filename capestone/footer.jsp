<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script>
var d = new Date();
document.getElementById("demo").innerHTML = d.toDateString();
</script>

<style type="text/css">
.foo {
   position: fixed;
   left: 0;
   bottom: 0;
   height:50px;
   width: 100%;
   background-color: white;
   text-align: right;
}
</style>
</head>
<body>
<div class="foo">
	<p id="demo" style="margin-right:20px;"></p>
</div>

</body>

</html>