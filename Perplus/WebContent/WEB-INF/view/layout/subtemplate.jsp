<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Perplus</title>
		  <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  
		  <link rel="stylesheet" href="css/style.css"><!-- perplus css -->
		  <link href="css/bootstrap.min.css" rel="stylesheet"><!-- bootstrap css -->
		  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
		  
		  <link href="css/datepicker.css" rel="stylesheet"><!-- bootstrap datepicker css -->
		  
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> <!-- jquery script -->
		  
		   
		  <script src="js/bootstrap-datepicker.js"></script> <!-- bootstrap datepicker javascript -->
		  <script src="js/js.js"></script>	<!-- perplus javascript -->
	</head>
	<style>
		.navbar.navbar {
		 background-color:white !important;
		 color:black !important;
	     position:relative !important; 
	     margin-top:0px;
	     }
		#subheader{
			height:40px;
		}
	     
	     .navbar-default .navbar-nav>li>a {
	     	font-size:14px;
		    padding: 15px 40px;
		    color: #000!important;
		}
		.navbar-default .navs>li>a {
		    font-size: 14px;
		    padding: 15px 20px;
		    color: #fff !important;
		}
		a:focus{
		  border-bottom:solid 3px #fff  !important;
		}
		#myNavbar1{
			float:left;
			margin-left:20px;
		}
	</style>
	
	<body>
		<header>
		  		<tiles:insertAttribute name="header"/>
	  	</header>
	  
	  	<section>
	  		<tiles:insertAttribute name="subheader"/>
	  	</section>
	  
	  	<footer class="container-fluid bg-4 text-center">
	  		<tiles:insertAttribute name="footer"/>
	  	</footer>
 	 </body>
	  	<script src="js/bootstrap.min.js"></script>
</html>