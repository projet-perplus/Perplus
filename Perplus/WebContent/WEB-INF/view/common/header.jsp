<%@ page contentType="text/html;charset=UTF-8" %>



 <nav class="navbar navbar-default" id="navbar1">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-img" href="${initParam.rootPath}/main.do">
            <img src="css/image/logos.PNG" alt="logo"/>
          </a>
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
          </button>

        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav navbar-right navbar-nav1">
           
            <li><a href="#">여행명소</a></li>
            <li><a href="#">호스팅하기</a></li>
            <li><a href="#" data-toggle="modal" data-target="#join" data-style="join">회원가입</a></li>
            <li><a href="#" data-toggle="modal" data-target="#myModal">로그인</a></li>
          </ul>
        </div>
      </div>
    </nav>
<!-- 로그인 폼 -->
    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
              <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header"> 
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">로그인</h4>
                  </div>
              <div class="modal-body">
                  <form>
                      <div class="form-group">
                          <input type="email" class="form-control" id="email" name="uesr" placeholder="이메일 주소" required>
                      </div>
                      <div class="form-group">
                          <input type="password" class="form-control" id="pass" name="password" placeholder="password" required>
                      </div>
               </div>
               <div class="modal-footer">
                      <a href="#">비밀번호 찾기</a>
<!--
                      <button type="submit" class="btn btn-default" data-dismiss="modal" id="loginBtn">로그인</button>
-->
                      <input type="submit" name="login" class="btn btn-default" id="loginBtn" value="로그인">
               </div>
                  </form>
           </div>
        </div>
    </div>
    <!-- 회원가입 폼 -->
    <div class="modal fade" id="join" role="dialog">
      
      
        <div class="modal-dialog">
              <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header"> 
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">회원 가입</h4>
                  </div>
              <div class="modal-body">
                  <form action="aaa">
                      <div class="form-group">
                          <input type="email" class="form-control" id="email" name="email" placeholder="이메일 주소" required>
                      </div>
                       <div class="form-group">
                          <input type="text" class="form-control" id="name" name="name" placeholder="이름" required>
                      </div>
                      <div class="form-group">
                          <input type="password" class="form-control" id="password" name="password" placeholder="password" required>
                      </div>
                      <div class="form-group">
						  <div class="row">
							<div class="col-xs-5 col-md-5 col-lg-5" >
								<select class="form-control" id="joinSelect" name="yy">
									<option >월</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div> 
							<div class="col-xs-3 col-md-3 col-lg-3" id="joinSelectStyle" style=" padding-left:0px !important;">
								<select class="form-control" id="joinSelect">
									<option >일</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
							<div class="col-xs-4 col-md-4 col-lg-4">
								<select class="form-control" id="joinSelect">
									<option >년</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
					</div>
               </div>
               <div class="modal-footer">
				  <input type="submit" name="login" class="btn btn-default btn-lg" id="loginBtn" value="회원가입">
               </div>
                  </form>
           </div>
        </div>
    </div>
    