<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">

</script>

<nav class="navbar navbar-default" id="navbar1" style="z-index:5 !important;">
	<div class="container-fluid navbarheader">
		<div class="navbar-header">
			<a class="navbar-img" href="${initParam.rootPath}/main.do">
			<img src="/Perplus/css/image/logos.PNG" alt="logo" />
			</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar" >
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<c:choose>
			<c:when test="${sessionScope.login_info == null}">
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right navbar-nav1">
						<li data-sub="hotplace.do"><a href="${initParam.rootPath}/hotplace.do">여행명소</a></li>
						<li><a href="#" data-toggle="modal" data-target="#join"
							data-style="join">회원가입</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal">로그인</a></li>
					</ul>
				</div>
			</c:when>
			<c:otherwise>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right navbar-nav1">
						<li><a href="${initParam.rootPath}/hotplace.do">여행명소</a></li>
						<li><a href="${initParam.rootPath}/hosting.do">호스팅하기</a></li>
						<li><a href="${initParam.rootPath}/nowtravel.do">여행</a></li>
						<li><a href="${initParam.rootPath}/accountmanagement.do">마이페이지</a></li>
						<li><a href="${initParam.rootPath}/member/chattingfind.do">메시지</a></li>
						<li><a href="${initParam.rootPath}/member/logout.do">로그아웃</a></li>
					</ul>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</nav>

