<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<tiles:insertAttribute name="linkandscripthead" />
<script type="text/javascript" src="/Perplus/js/review.js"></script>
<link rel="stylesheet"
	href="https://jqueryvalidation.org/files/demo/site-demos.css">

</head>
<style>
.pictureList {
	border: 0px !important;
	margin-top: 5px !important;
	s
}

.modal.fade.in {
	background-color: rgba(0, 0, 0, 0.5);
}

.hotplacefooter {
	position: absolute !important;
}
</style>
<body>
	<div id="wrap">
		<div id="header">
			<header class="mainheader">
				<tiles:insertAttribute name="header" />
				<tiles:insertAttribute name="logindialog" />
				<tiles:insertAttribute name="joindialog" />
			</header>
		</div>
		<div id="content" style="padding-bottom: 80px;">
			<section>
				<tiles:insertAttribute name="review" />
				<tiles:insertAttribute name="reviewenrollment" />
				<tiles:insertAttribute name="reviewmodify" />
				<tiles:insertAttribute name="reviewdetailpagedialog" />
			</section>
		</div>

		<footer class="container-fluid bg-4 text-center hotplacefooter"
			id="footer">
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
</body>
<script src="/Perplus/js/bootstrap.min.js"></script>
</html>


