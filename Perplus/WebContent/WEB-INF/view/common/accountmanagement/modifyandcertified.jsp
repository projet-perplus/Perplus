<%@ page contentType="text/html;charset=UTF-8"%>

<div id="dashboard-content">
	<form action="">
			<div class="panel-header">
				<span>필수 사항</span>
			</div>
			<div class="panel-body">
				<div class="row" style="margin-bottom:15px;">
					<div class="col-sm-3">
						<div class="img">
								
					</div>
						<input type="file" value="사진등록"  />
			
					</div>
			<div class="col-sm-9">
				<div class="row row-condensed space-4">
				 	<label class="text-right col-sm-3">
				          이름(예: 홍길동) 
				        </label>
					<div class="col-sm-9">
						<div class="form-group">
						  <input type="text" class="form-control" id="user_name" name="user" size="10" type="text" value="상욱">
						</div>
					</div>
				</div>
			
					<div class="row row-condensed space-4">
					 	<label class="text-right col-sm-3" for="user_name">
					        	  성별
					        </label>
						<div class="col-sm-9">
							<div class="form-group">
									<select class="form-control" name="genter">
									    <option>010</option>
									    <option>2</option>
									    <option>3</option>
									 </select>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
					 	<label class="text-right col-sm-3" >
					         	생년월일
					        </label>
						<div class="col-sm-9">
							<div class="col-sm-4"  style="padding-left:0px;">
								<div class="form-group">
									<select class="form-control" name="birthday">
									    <option>1</option>
									    <option>2</option>
									    <option>3</option>
									 </select>
								 </div>
							</div>
							<div class="col-sm-4"  style="padding-left:0px;">
								<div class="form-group">
									<select class="form-control" name="birthday">
									    <option>1</option>
									    <option>2</option>
									    <option>3</option>
									 </select>
								 </div>
							</div>
							<div class="col-sm-4"  style="padding-left:0px;">
								<div class="form-group">
									<select class="form-control" name="birthday">
									    <option>1</option>
									    <option>2</option>
									    <option>3</option>
									 </select>
								 </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
						<div class="row row-condensed space-4">
						 	<label class="text-right col-sm-3">
						          이메일 주소
						    </label>
						<div class="col-sm-9">
							<div class="form-group">
							  <input type="email" class="form-control" id="email"name="email" placeholder="abc123@naver.com" required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						 	<label class="text-right col-sm-3">
						          비밀번호
						    </label>
						<div class="col-sm-9">
							<div class="form-group">
							  <input type="password" class="form-control" id="password" name="password" required="required">
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
					 	<label class="text-right col-sm-3">
					         	전화번호
					        </label>
						<div class="col-sm-9">
							<div class="col-sm-4" style="padding-left:0px;">
								<div class="form-group">
									<select class="form-control" name="phone">
									    <option>010</option>
									    <option>2</option>
									    <option>3</option>
									 </select>
								 </div>
							</div>
						
							<div class="col-sm-4" style="padding-left:0px;">
								<div class="form-group">
									<input type="number" class="form-control" name="phone" required="required" size="4">

								 </div>
							</div>
							
							<div class="col-sm-4" style="padding-left:0px;">
								<div class="form-group">
									<input type="number" class="form-control" name="phone" required="required" placeholder="뒷번호" size="4">
								 </div>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						 	<label class="text-right col-sm-3">
						         	거주지역
						    </label>
						<div class="col-sm-9">
							<div class="col-sm-4"  style="padding-left:0px;">
								<div class="form-group">
									<select class="form-control" name="area">
									    <option>경기</option>
									    <option>2</option>
									    <option>3</option>
									 </select>
								 </div>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						 	<label class="text-right col-sm-3">
						         	자기소개
						    </label>
						<div class="col-sm-9">
							<div class="form-group">
							  <textarea class="form-control" rows="5" id="comment" name="content"></textarea>
							</div>	
						</div>
					</div>
					<div class="row row-condensed space-4">
						 <div class="col-sm-9">
						 </div>	
						<div class="col-sm-3" >
							<input class="btn btn-primary" type="submit" value="저장" style="float:right;">
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
	</form>	
</div>	
<div id="dashboard-content">
	<form action="">
			<div class="panel-header">
				<span>본인 인증</span>
			</div>
			<div class="panel-body">
				<input type="file"  value="신분증 등록"/>
				<img src="" alt="" />
			</div>	
	</form>	
</div>	
