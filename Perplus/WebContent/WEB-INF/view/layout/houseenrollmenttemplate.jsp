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
	 </head>
	 <style>
		.form-control{
			font-size:12px !important; 
		}
		.row-condensed>label{
		width:250px !important;
		}
		
	 </style>
	  
	 <body >
	 	<!-- class="hostingimg" -->
	 	<tiles:insertAttribute name="hosting"/>
	 </body>	
	  	<script src="js/bootstrap.min.js"></script>
</html>