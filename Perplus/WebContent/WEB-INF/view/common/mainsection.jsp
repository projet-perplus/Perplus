<%@ page contentType="text/html;charset=UTF-8"%>

<!-- First Container 메인 배경 -->
<div class="container-fluid bg-1 text-center">
  	<div class="mainLogo">
		<img src="css/image/mainLogo.PNG" alt="logo">
	</div>
</div>

<!-- Second Container 필터 폼-->
<div class="container bg-2 text-center">
		<div class="row">
		<div class="col-md-12">
			<form method="post" action="">
				<div class="col-md-4">
					<div class="form-group">
					  <label for="location">위치</label><br>
					  <input type="text" class="form-control" name="location" id="location" placeholder="목적지 도시명 주소" >
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<!--<div class="input-group date" data-provide="datepicker">-->
							<div class="col-md-6">
								<!-- <label for="location">날짜</label><br>-->
								<input type="text" class="form-control" value="체크인" name="check" id="dpd1" style="margin-top:35px;" >
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control" value="체크아웃" name="check" id="dpd2" style="margin-top:35px">
							</div>
						<!--</div>-->
					</div>
				</div>
				<div class="col-md-4">
					<div class="col-sm-6" >
						 <div class="form-group">
						  <label for="secl1">인원</label>
						  <select class="form-control" name="personnel" id="GuestInput">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						  </select>
						</div>
					</div>
					<div class="col-sm-6 col-lg-6" >
						 <a href="${initParam.rootPath}/housesearch.do"><button type="button" class="btn btn-default btn-lg" name="roomssearch"  id="Search" >숙소 검색</button></a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Where To Find Me?</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
   
    </div>
    <div class="col-sm-4">

      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    
    </div>
    <div class="col-sm-4"> 
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
      
    </div>
  </div>
</div>