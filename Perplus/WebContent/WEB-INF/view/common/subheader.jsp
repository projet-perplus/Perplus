<%@ page contentType="text/html;charset=UTF-8"%>
<nav class="navbar navbar-default" id="subheader">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar1">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
          </button>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar1">
          <ul class="nav navbar-nav navbar-left navs">
            <li data-page="accountmanagement"><a href="${initParam.rootPath}/accountmanagement.do">계정관리</a></li>
            <li data-page="rooms"><a href="${initParam.rootPath}/rooms.do">숙소 목록</a></li>
            <li data-page="travellist"><a href="${initParam.rootPath}/travellist.do">여행목록</a></li>
            <li data-page="message"><a href="${initParam.rootPath}/message.do">메시지</a></li>
          </ul>
        </div>
      </div>
    </nav>
