<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="/Perplus/css/subtemplate.css"><!-- perplus sub css -->
		<tiles:insertAttribute name="linkandscripthead"/>

		<script>
			$(function(){
				$( '#tabs' ).tabs();
			});
		</script>
	</head>
	
	<body class="subbody">
		<header class="mainheader">
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
  						<tiles:insertAttribute name="passwordconfirmdialog"/>
  					
	  				</div>
	  				<div class="col-md-9">
	  					<tiles:insertAttribute name="rightmenu"/>
  						<tiles:insertAttribute name="chattingdialog"/>
  						<tiles:insertAttribute name="chattinglogdialog"/>
	  				</div>
	  			</div>
	  		</div>
	  	</div>
	  	<footer class="container-fluid bg-4 text-center">
	  		<tiles:insertAttribute name="footer"/>
	  	</footer>
 	 </body>
	  	<script src="/Perplus/js/bootstrap.min.js"></script>
</html>




