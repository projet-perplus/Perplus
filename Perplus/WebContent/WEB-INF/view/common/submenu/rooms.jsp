<%@ page contentType="text/html;charset=UTF-8"%>
<ul class="submenu_ul" data-main="rooms">
	<li data-sub="roomlist.do" class="active"><a href="${initParam.rootPath}/house/myHouse.do?memberEmail=${sessionScope.login_info.memberEmail}">숙소 목록</a></li>
	<li data-sub="schedulemanagement.do"><a href="${initParam.rootPath}/schedulemanagement.do">예약 관리</a></li>

</ul>