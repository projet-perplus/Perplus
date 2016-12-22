<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<ul class="submenu_ul" data-main="accountmanagement">
	<c:choose>
		<c:when test="${sessionScope.login_info == null}">
			<li data-sub="modifyandcertified.do" class="active"><a href="${initParam.rootPath}/modifyandcertified.do">프로필 수정 및 인증</a><br></li>
			<li data-sub="member/payment_method.do"><a href="#" data-toggle="modal" data-target="#myModal">결제 수단</a><br></li>
			<li data-sub="member/howgetmoneyfind.do"><a href="#" data-toggle="modal" data-target="#myModal">대금수령 방법</a><br></li>
			<li data-sub="member/transaction_history.do"><a href="#" data-toggle="modal" data-target="#myModal">대금 수령내역</a><br></li>
			<li data-sub="review.do"><a href="#" data-toggle="modal" data-target="#myModal">후기 </a><br></li>
			<li data-sub="exit.do"><a href="#" data-toggle="modal" data-target="#myModal">탈퇴</a><br></li>
		</c:when>
		<c:otherwise>
			<li data-sub="modifyandcertified.do" class="active"><a href="${initParam.rootPath}/modifyandcertified.do">프로필 수정 및 인증</a><br></li>
			<li data-sub="member/payment_method.do"><a href="${initParam.rootPath}/member/payment_method.do">결제 수단</a><br></li>
			<li data-sub="member/howgetmoneyfind.do"><a href="${initParam.rootPath}/member/howgetmoneyfind.do">대금수령 방법</a><br></li>
			<li data-sub="member/transaction_history.do"><a href="${initParam.rootPath}/member/transaction_history.do">대금 수령내역</a><br></li>
			<li data-sub="review.do"><a href="${initParam.rootPath}/review.do">후기 </a><br></li>
			<li data-sub="exit.do"><a href="${initParam.rootPath}/exit.do">탈퇴</a><br></li>
		</c:otherwise>
	</c:choose>
</ul>

