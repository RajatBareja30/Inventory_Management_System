<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>Registration page</title>
<style>
body{
background: url('https://t4.ftcdn.net/jpg/00/62/71/85/240_F_62718590_nle5XU8jNJgy5QokGPat6h8TU6aWSOL6.jpg') fixed;
background-size: cover;
}

.vl {
  border-left: 2px solid gray;
  position: fixed;
  left: 50%;
  margin-left: -3px;
  top: 0;
  bottom:0;
}

.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 80px;
}

.left {
  left:0;
}

.right {
  right: 0;
}

hr{
    border-color: black;
}

input{
	width:20%;
	margin-left:20px;
}

form label{
	width:10%;
	margin-left:20px;
}

.left{
	margin: 10px;
}

.right-label{
	margin:12px;
}

.right-div{
	margin-left:20px;
	border:1px solid #000;
  	font-family:arial;
  	width:500px;
  	list-style:none;
  	max-height:350px;
  	overflow:auto;
  	text-indent:10px;
}
</style>
</head>
<script>
$(document).ready(function(){
	   $('#header').load("header.jsp")
	   $('#footer').load("footer.jsp")
	});
</script>
<body>
<div class="vl"></div>

<div id="header"></div>

<div class="split left" style="width: 100%;">
<form role="form" action="RegistrationServlet" method="post">

	<div>
    	<p>
        <label for="firstName">First Name*</label>  
        <input type="text" id="firstName" placeholder="First Name" name= "firstname"  title="only alphabets" pattern="[a-zA-Z]+" autofocus required>  
    	</p>  
    </div>
    
    <div>
    	<p>
        <label for="lastName">Last Name*</label>
        <input type="text" id="lastName" placeholder="Last Name" name= "lastname"  title="only alphabets" pattern="[a-zA-Z]+" autofocus required>
    </p>  
    </div>
    
    <div>
    	<p>
        <label for="email">Email* </label>
        <input type="email" id="email" placeholder="Email" name= "email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="abc@email.com" required>
    </p> 
    </div>
    
    <div>
    	<p>
        <label for="password">Password*</label>
        <input type="password" id="password" placeholder="Password" name= "password" title="6-12 characters, at least one uppercase letter, one lowercase letter and one number "required>
    </p>  
    </div>
    
    <div>
    	<p>
        <label for="password">Confirm Password*</label>    
        <input type="password" id="confirm_password" placeholder="Password" name= "passConfirm" title="6-12 characters, at least one uppercase letter, one lowercase letter and one number "  required>
    </p>  
    </div>
    
    <div>
    	<p>
        <label for="phoneNumber">Phone number </label>
        <input type="text" id="phoneNumber" placeholder="Phone number" name= "phone" required>          
    </p>  
    </div>
    
    
     <div>
    	<p>
        	<label >Gender</label>
        	<div>
        	
        		<input type="radio" id="femaleRadio" value="Female" style="width: 5%; margin-left: 20px;">Female
        
        		<input type="radio" id="maleRadio" value="Male" style="width: 5%; margin-left: 20px;">Male
                                
     		
     		</div>
     </div> 
     
     <br>
     
     <div style="margin-left: 30px; display:inline-block;">
     	<button class="left">Sign up</button>
     	<button class="left">Save</button>
     	<button class="left">Home</button>
     </div>
     
</form>
</div>

<div class="split right" style="padding-top: 60px;">
	<h3 align="center"><b> List of employees </b></h3>
	<hr>	
		
	<div class="right-div">
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    	
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    	
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    	
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    	
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    	
    	<p>
        <label class="right-label"> Name 1 </label>  
        <button class="right">Delete</button>
		<button class="right">Edit</button>
    	</p>  
    </div>
	
</div>

</body>
<div id="footer"></div>
</html>