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
		a{
			color:black !important;
		}
		ul >li{
		list-style:none;
		
		}
		.navbar.navbar {
		 background-color:white !important;
		 color:black !important;
	     position:relative !important; 
	     margin-top:0px;
	     }
	    .navbar-default .navbar-nav1>li>a {
		    color: #000 !important;
		}
		#subheader{
			background-color:#484848 !important;
		}
		
		.navs li a:hover{
			color:#ccc;
			border-bottom:solid 3px #ccc !important;
		}

		/* sub menu ul li a style*/
		.subrow{
			margin-top:25px !important;
		}
		.submenu_ul>li{
			margin-bottom:15px;
		}
		.submenu_ul>li>a{
			font-size:16px !important;
			color:#767676 !important;
			font-weight:500 !important;
		}
		.submenu_ul>li>a:focus{
			color: #bbb !important;
			font-weight:bold !important;
		}
		.submenu_ul>li>a:hover{
			text-decoration: none !important;
   			color: #bbb !important;
		}
	
		
		
	/* 	.submenu_ul>li>a:ACTIVE{
		    text-decoration: none !important;
		    color: #484848 !important;
		    font-weight: bold !important;
		} */
		
		/* right menu */
		#dashboard-content{
			border:solid 1px #ccc;
			margin-bottom:20px;
		}
		.panel-header{ 
			height:50px;
			background-color:#edefed;
		}
		.panel-header > span{
		
		 	color:black;
			margin-left:20px;
			font-weight:500;
			font-size:16px;
			line-height:50px;
		}
		.panel-body{
			font-weight:400 !important;
			color:#767676 !important;
			
		}
		label {
		font-weight:400 !important;
	    display: block !important;
	    padding-top: 9px !important;
	    padding-bottom: 8px !important;
		}
		.img{
			height:150px;
			background-color:#ccc;
		}
		/* payment style */
		.paymentBtn{
			background:none;
			border: 1px solid #ccc;
		}
		.paymentBtn>a>.pamentAdd{
			font-size:10px !important;
			
		}
		
		/* history style*/
		.ui-tabs .ui-tabs-nav {
		    padding: 15px;
		}
		.ui-tabs {
		    position: relative;
		    padding:0 !important;
		}
		/* tabs */
		.ui-corner-all, .ui-corner-top, .ui-corner-right, .ui-corner-tr {
		     border-top-right-radius:0px !important;  
		}
		.ui-widget-header {
		    border:none !important;

		}
		.ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active, a.ui-button:active, .ui-button:active, .ui-button.ui-state-active:hover {
	    /* border: 1px solid #003eff; */
	    /* background: #007fff; */
	    font-weight: normal;
	    color: #fff;
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




