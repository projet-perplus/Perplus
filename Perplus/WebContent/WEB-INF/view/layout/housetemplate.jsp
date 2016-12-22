<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>

<html>
<head>
<tiles:insertAttribute name="linkandscripthead" />
</head>

<body class="subbody">
	<div id="wrap">
		<div id="header">
			<header class="mainheader">
				<tiles:insertAttribute name="header" />
				<tiles:insertAttribute name="logindialog" />
				<tiles:insertAttribute name="joindialog" />

			</header>
		</div>
		<div class="content">
			<section>
				<tiles:insertAttribute name="body" />
				<tiles:insertAttribute name="addfilter" />
				<tiles:insertAttribute name="reservationdialog" />
				<tiles:insertAttribute name="reviewdetailpagedialog" />
				<tiles:insertAttribute name="paymentcardselectdialog" />

			</section>
		</div>
		<footer class="container-fluid bg-4 text-center" id="footer">
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
</body>
<script src="/Perplus/js/bootstrap.min.js"></script>
</html>

