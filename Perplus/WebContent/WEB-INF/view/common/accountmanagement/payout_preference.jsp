<%@ page contentType="text/html;charset=UTF-8"%>
<div id="dashboard-content">
	<div class="panel-header">
		<span>대금 수령 방법</span>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-xs-3">
			</div>
			<div class="col-xs-6" style="text-align:center;">
				<span>대금을 지급받으려면 대금 수령 방법을 설정해야 합니다 .</span>
				<button ><span data-toggle="modal" data-target="#payoutpreference">대금 수령 계좌 추가</span></button>
			</div>
			<div class="col-xs-3"> 
			</div>
		</div>
	</div>	
	
	
	
	
	
	
<!-- dialog -->	
	<div class="modal fade" id="payoutpreference" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
		        <div class="modal-dialog">
		              <!-- Modal content-->
	               <form action="">
			            <div class="modal-content" style="padding:0px;">
			              <div class="modal-header"> 
			                  <button type="button" class="close" data-dismiss="modal">&times;</button>
			                      <h4 class="modal-title">대금 수령 계정 추가</h4>
			                  </div>
			              <div class="modal-body">
		              			
								<div class="row row-condensed space-4">
								 	<label class="text-left col-sm-3">
								   			  예금주
								        </label>
									<div class="col-sm-9">
										<div class="form-group">
										  <input type="text" class="form-control"name="accountholder" placeholder="이름을 입력하세요..." required="required">
										</div>
									</div>
								</div>		
								<div class="row row-condensed space-4">
								 	<label class="text-left col-sm-3">
								   			  은행명
								        </label>
									<div class="col-sm-9">
										<div class="form-group">
										  <input type="text" class="form-control"name="bankname" placeholder="은행이름을 입력하세요..." required="required">
										</div>
									</div>
								</div>
								<div class="row row-condensed space-4">
								 	<label class="text-left col-sm-3">
								   			  계좌번호
								        </label>
									<div class="col-sm-9">
										<div class="form-group">
										  <input type="number" class="form-control"name="accountnumber" placeholder="숫자만 입력하세요..." required="required">
										</div>
									</div>
								</div>
			               <div class="modal-footer">
			                      <input type="submit" name="enrollment" class="btn btn-default" value="등록">
			               </div>
			               </div>
	                  </form>
		           </div>
		        </div>
	
</div>	