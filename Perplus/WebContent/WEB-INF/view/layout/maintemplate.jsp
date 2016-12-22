<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  taglib tiles -->
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>

<html>
<head>
<tiles:insertAttribute name="linkandscripthead" />

</head>
<style>
html, body {
	background-size: cover !important;
	background: url(/Perplus/css/image/mainBg.jpg) no-repeat center center
		fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
<body>
	<div id="wrap">
		<div id="header">
			<header>
				<tiles:insertAttribute name="header" />
				<tiles:insertAttribute name="logindialog" />
				<tiles:insertAttribute name="joindialog" />
			</header>
		</div>

		<div id="content">
			<section>
				<tiles:insertAttribute name="nav" />
			</section>

		</div>
		
		<footer class="container-fluid bg-4 text-center" id="footer">
			<tiles:insertAttribute name="footer" />
		</footer>

	</div>
</body>

<script src="/Perplus/js/bootstrap.min.js"></script>
</html>