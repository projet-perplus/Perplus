<%@ page contentType="text/html;charset=UTF-8"%>

<nav class="navbar navbar-default" id="navbar1">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-img" href="${initParam.rootPath}/main.do">
			 <img src="css/image/logos.PNG" alt="logo" />
			</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>

		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right navbar-nav1">

				<li><a href="#">여행명소</a></li>
				<li><a href="${initParam.rootPath}/hosting.do">호스팅하기</a></li>
				<li><a href="#" data-toggle="modal" data-target="#join" data-style="join">회원가입</a></li>
				<li><a href="#" data-toggle="modal" data-target="#myModal">로그인</a></li>
			</ul>
		</div>
	</div>
</nav>

