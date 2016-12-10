<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<tiles:insertAttribute name="linkandscripthead"/>
		<script type="text/javascript" src="/Perplus/js/review.js"></script>
	</head>
	<body>
		<header class="mainheader">
		  		<tiles:insertAttribute name="header"/>
  		  		<tiles:insertAttribute name="logindialog"/>
  				<tiles:insertAttribute name="joindialog"/>
	  	</header>
	  	
	  	<section>
	  		<tiles:insertAttribute name="review"/>
	  		<tiles:insertAttribute name="reviewenrollment"/>
	  	</section>
	  	
  	  	<footer class="container-fluid bg-4 text-center">
	  		<tiles:insertAttribute name="footer"/>
	  	</footer>
	</body>
 	<script src="js/bootstrap.min.js"></script>
</html>

	
	