<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<tiles:insertAttribute name="linkandscripthead"/>
		
		<script>
		$(function(){
			$( '#tabs' ).tabs();
		});
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

	</style>
	<body class="subbody">
		<header>
		  		<tiles:insertAttribute name="header"/>
  		  		<tiles:insertAttribute name="logindialog"/>
  				<tiles:insertAttribute name="joindialog"/>
	  	</header>
	  
	  	<section>
	  		<tiles:insertAttribute name="subheader"/>
	  	</section>
	  	
	  	<div class="menu">
	  		<div class="container">
	  			<div class="row subrow">
	  				<div class="col-md-3 space-sm-4">
	  					<tiles:insertAttribute name="submenu"/>
	  					<tiles:insertAttribute name="paymentmethoddialog"/>
  						<tiles:insertAttribute name="payoutpreference"/>
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




