<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>

<html>
	<head>
		<tiles:insertAttribute name="linkandscripthead"/>
	</head>
	
	<body class="subbody">
		<header class="mainheader">
	  		<tiles:insertAttribute name="header"/>
	  		<tiles:insertAttribute name="logindialog"/>
			<tiles:insertAttribute name="joindialog"/>
			
	  	</header>

		<section>
			<tiles:insertAttribute name="body"/>
			<tiles:insertAttribute name="addfilter"/>
			<tiles:insertAttribute name="reservationdialog"/>
			<tiles:insertAttribute name= "reviewdetailpagedialog"/>
			<tiles:insertAttribute name="paymentcardselectdialog"/>
			
		</section>

	  	<footer class="container-fluid bg-4 text-center">
	  		<tiles:insertAttribute name="footer"/>
	  	</footer>
 	 </body>
	  	<script src="/Perplus/js/bootstrap.min.js"></script>
</html>

