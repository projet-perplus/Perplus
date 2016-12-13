<%@ page contentType="text/html;charset=UTF-8" %>
<!--  taglib tiles -->
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>

<html>
	<head>
		<tiles:insertAttribute name="linkandscripthead"/>
	</head>
	<style type="text/css">
		html,body {
		background: url(/Perplus/css/image/mainBg.jpg) center center no-repeat !important;
		background-size: cover !important;
		}
	</style>
  <body class="mainBg">
  	<header class="perplusheader">
  		<tiles:insertAttribute name="header"/>
  		<tiles:insertAttribute name="logindialog"/>
  		<tiles:insertAttribute name="joindialog"/>
  	</header>
  
  	<section>
  		<tiles:insertAttribute name="nav"/>
  	</section>
  		<%-- <a href="${initParam.rootPath}/accountmanagement.do" class="menu">메뉴 가봐라</a> --%>

  	<footer class="container-fluid bg-4 text-center">
  		<tiles:insertAttribute name="footer"/>
  	</footer>
  </body>
  	<script src="/Perplus/js/bootstrap.min.js"></script>
</html>