<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<title>Reciept </title>

<style>
body{
background: url('https://t4.ftcdn.net/jpg/00/62/71/85/240_F_62718590_nle5XU8jNJgy5QokGPat6h8TU6aWSOL6.jpg') fixed;
background-size: cover;
}

#footer{
    position: fixed;
    bottom: 0;
    
body {
    margin-top: 20px;
}
</style>

</head>
<script>
$(document).ready(function(){
	   $('#footer').load("footer.jsp")
	   $('#header').load("header.jsp")

	});
</script>
<body>
<div id="header"></div>
<div align = "left" style="padding-left: 60px;">
<form>
<label> Date and time: </label>
<input type= "datetime-local" name=""></form>
</div>
<br>

 <div class="container">
    <div class="row">
      <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
         <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>ABC Store</strong>
                        <br>
                        George Brown College
                        <br>
                        Canada, ON
                        <br>
                        <abbr title="Phone">P:</abbr> (xxx) xxx-xxxx
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: 1st Feburary, 2020</em>
                    </p>
                    <p>
                        <em>Receipt #: 123</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9"><em>Chicken </em></h4></td>
                            <td class="col-md-1" style="text-align: center"> 2 </td>
                            <td class="col-md-1 text-center">$5</td>
                            <td class="col-md-1 text-center">$10</td>
                        </tr>
                        <tr>
                            <td class="col-md-9"><em>Drinks</em></h4></td>
                            <td class="col-md-1" style="text-align: center"> 1 </td>
                            <td class="col-md-1 text-center">$2</td>
                            <td class="col-md-1 text-center">$2</td>
                        </tr>
                        <tr>
                            <td class="col-md-9"><em>Cookies</em></h4></td>
                            <td class="col-md-1" style="text-align: center"> 2 </td>
                            <td class="col-md-1 text-center">$2</td>
                            <td class="col-md-1 text-center">$4</td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>Tax: </strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong>$3</strong>
                            </p>
                            <p>
                                <strong>$3</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>$16</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
               </div> 
           </div>
    </div>
    </div>
  <div align = "center">
   	<button>Home</button>
   	<button>POS</button>
     </div>
           

<div id="footer" ></div>
</body>

</html>