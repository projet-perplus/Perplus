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
		  <link href="css/jquery-ui.min.css" rel="stylesheet">
		  <link href="css/datepicker.css" rel="stylesheet"><!-- bootstrap datepicker css -->
		  
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> <!-- jquery script -->
		  <script src="js/jquery-ui.min.js"></script>
		  <script src="js/bootstrap-datepicker.js"></script> <!-- bootstrap datepicker javascript -->
		  <script src="js/js.js"></script>	<!-- perplus javascript -->
		  <script>
		  jQuery( document ).ready( function() {
		        $( '#tabs' ).tabs();
		      } );
	 	 </script>
	</head>
	
	<style>
		a {
			color: black !important;
		}
		
		ul>li {
			list-style: none;
		}
		
		.navbar.navbar {
			background-color: white !important;
			color: black !important;
			position: relative !important;
			margin-top: 0px;
		}
		
		.navbar-default .navbar-nav1>li>a {
			color: #000 !important;
		}
		
		#subheader {
			background-color: #484848 !important;
		}
		
		.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus,
			.navbar-default .navbar-nav>.active>a:hover {
			color: #ccc;
			background-color: transparent !important;
			border-bottom: solid 3px #ccc !important;
		}
		
		.navs li a:hover {
			color: #ccc;
			border-bottom: solid 3px #ccc !important;
		}
		
		label {
			font-weight: 400 !important;
			display: block !important;
			padding-top: 9px !important;
			padding-bottom: 8px !important;
		}
		
		.img {
			height: 150px;
			background-color: #ccc;
		}
		/* history style*/
		.ui-tabs .ui-tabs-nav {
			padding: 15px;
			background-color: #ddd;
		}
		
		.ui-tabs {
			position: relative;
			padding: 0 !important;
		}
		/* tabs */
		.ui-widget-header {
			border: none !important;
		}
		
		.ui-corner-all, .ui-corner-bottom, .ui-corner-right, .ui-corner-br {
			border-bottom-right-radius: 0px !important;
		}
		
		.ui-corner-all, .ui-corner-bottom, .ui-corner-left, .ui-corner-bl {
			border-bottom-left-radius: 0px !important;
		}
		
		.ui-corner-all, .ui-corner-top, .ui-corner-right, .ui-corner-tr {
			border-top-right-radius: 0px !important;
		}
		
		.ui-corner-all, .ui-corner-top, .ui-corner-left, .ui-corner-tl {
			border-top-left-radius: 0px !important;
		}

</style>
	
	<body>
		<header>
		  		<tiles:insertAttribute name="header"/>
	  	</header>
	  
	  	<section>
	  		<tiles:insertAttribute name="subheader"/>
	  	</section>
	  	
	  	
	  	
	  	<div class="menu">
	  		<div class="container">
	  			<div class="row subrow">
	  				<div class="col-md-3 space-sm-4">
	  					<tiles:insertAttribute name="submenu"/>
	  				</div>
	  				<div class="col-md-9">
	  					<tiles:insertAttribute name="rightmenu"/>
	  				</div>
	  			</div>
	  		</div>
	  	</div>
	  	<footer class="container-fluid bg-4 text-center">
	  		<tiles:insertAttribute name="footer"/>
	  	
	  		
	  	</footer>
 	 </body>
	  	<script src="js/bootstrap.min.js"></script>
</html>




