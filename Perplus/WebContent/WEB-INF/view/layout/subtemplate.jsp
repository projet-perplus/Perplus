<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Perplus/css/subtemplate.css">
<!-- perplus sub css -->
<tiles:insertAttribute name="linkandscripthead" />

<script>
	$(function() {
		$('#tabs').tabs();
	});
</script>
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

		<div id="content">
			<section>
				<tiles:insertAttribute name="subheader" />
			</section>


			<div class="menu">
				<div class="container">
					<div class="row subrow">
						<div class="col-md-3 space-sm-4">
							<tiles:insertAttribute name="submenu" />
							<tiles:insertAttribute name="paymentmethoddialog" />
							<tiles:insertAttribute name="payoutpreference" />
							<tiles:insertAttribute name="passwordconfirmdialog" />

						</div>
						<div class="col-md-9" >
							<tiles:insertAttribute name="rightmenu" />
						</div>
					</div>
				</div>
			</div>
		</div>

		<footer class="container-fluid bg-4 text-center" id="footer">
			<tiles:insertAttribute name="footer"/>
		</footer>
	</div>
</body>
<script src="/Perplus/js/bootstrap.min.js"></script>
</html>




