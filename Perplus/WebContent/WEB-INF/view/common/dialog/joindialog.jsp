<%@ page contentType="text/html;charset=UTF-8"%>

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
                  <form action="">
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