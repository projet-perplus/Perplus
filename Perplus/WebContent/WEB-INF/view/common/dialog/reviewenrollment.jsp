<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<script
	src="https://rawgit.com/andrewng330/PreviewImage/master/preview.image.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
		
	$(".preview").on("click","p",function() {
		  alert("a");
		  if($('.preview img').length < 6){
			   $(".addImage").show();				
			} 
	});
		
	$(".parentImg").on("change",".addImage",function() {
	
		  if($('.preview img').length == 4){
			   $(".addImage").hide();				
			} 
	});

	$("input[name=pictureList]").previewimage({
		div : ".preview",
		imgwidth : 150,
		imgheight : 100
	});
	
});
function setSendPosition(){
	alert(markerArray);
	for(var i in markerArray){
		if(markerArray[i].getIcon().url.includes('default')){
			$("#lat").val(markerArray[i].getPosition().lat());
			$("#lng").val(markerArray[i].getPosition().lng());
			alert($("#lat").val());
		}		
	}
}
</script>
<style>
.preview>div {
	display: inline-block;
	text-align: center;
}

.preview>div>img {
	margin: 5px;
}

.modal-backdrop.in {
	opacity: 0 !important;
}
</style>
<!-- reviewEnrollment-->
<div class="modal fade" id="reviewEnrollment" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true"
	style="padding-left: 0 !important; background-color: rgba(0, 0, 0, 0.5);">
	<div class="modal-dialog reviewEnrollment-dialog"
		style="transform: translate(0, 0) !important;">
		<!-- 658 -->
		<!-- Modal content-->
		<form action="${initParam.rootPath}/review/registerReview.do"
			method="post" enctype="multipart/form-data" id="myform">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<input type="hidden" id="lat" name="reviewMarkerX">
					<input type="hidden" id="lng" name="reviewMarkerY">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="title">
						<div class="row">
							<div class="col-md-4 col-sm-4 col-xs-4" style="margin-top: 5px;">
								<h4 class="modal-title">리뷰 등록</h4>
							</div>
							<div
								class="col-md-offset-4 col-md-3 col-sm-offset-4 col-sm-3 col-xs-offset-2 col-xs-5">
								<select name="reviewMarkerConstant" class="form-control" autocomplete="off"
									required>
									<option value="" selected>마커 종류</option>
									<option value=212>음식</option>
									<option value=211>명소</option>
								</select>
							</div>
						</div>
					</div>
				</div>



				<div class="modal-body">
					<div class="payoutpreferencedialog">
						<div class="row row-condensed space-4">
							<label class="text-left col-md-offset-1 col-md-2"> 리뷰제목 </label>
							<div class="col-md-8">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewTitle"
										placeholder="제목을 입력하세요..." required> <span
										class="errorMessage"><form:errors
											path="reviewForm.reviewTitle" /></span>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-offset-1 col-md-2"> 장소명 </label>
							<div class="col-md-8">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewPlace"
										placeholder="장소명을 입력하세요..." required> <span
										class="errorMessage"> <form:errors
											path="reviewForm.reviewPlace" />
									</span>
								</div>
							</div>
						</div>

						<div class="row row-condensed space-4">
							<label class="text-left col-md-offset-1 col-md-2">방문일자 </label>
							<div class="col-md-8">
								<div class="form-group">
									<div class="visitDate">
										<input type="text" class="form-control" name="reviewTime"
											placeholder="클릭해주세요.." required id="datepicker2"> <span
											class="errorMessage"> <form:errors
												path="reviewForm.reviewTime" />
										</span>
									</div>
								</div>
							</div>
						</div>

						<div class="row row-condensed space-4">
							<label class="text-left col-md-offset-1 col-md-2">사진 등록</label>
							<div class="col-md-9 col-xs-9 col-sm-9 parentImg">
								<span>이미지를 추가하세요(최대 5장)</span>
								<div class="preview"></div>
								<label class="btn btn-success addImage"> 이미지 추가&hellip; 
									<input type="file" id="getfile" name="pictureList"  accept="image/*" multiple
									style="border: 0 !important; display: none;" >
								</label>

							</div>
						</div>
					</div>

					<div class="row row-condensed space-4">
						<label class="text-left col-md-offset-1 col-md-2"> 평점 </label>
						<div class="col-md-2">
							<div class="stars stars-example-bootstrap" style="height: 40px;">
								<select id="example-bootstrap" name="reviewRating"
									class="form-control" autocomplete="off" required>
									<option value="" selected>평점</option>
									<option value=1>1</option>
									<option value=2>2</option>
									<option value=3>3</option>
									<option value=4>4</option>
									<option value=5>5</option>
								</select> <span class="errorMessage"> <form:errors
										path="reviewForm.reviewRating" />
								</span>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-md-offset-1 col-md-2"> 리뷰 내용</label>
						<div class="col-md-8">
							<div class="form-group">
								<textarea class="form-control" rows="5" id="comment"
									name="reviewContent" required></textarea>
								<span class="errorMessage"><form:errors
										path="reviewForm.reviewContent" /></span>
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<div class="row">
							<div class="col-md-offset-1 col-md-5 leftform">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" style="float: left !important;">취소</button>
							</div>
							<div class="col-md-5 rightform">
								<input type="submit" name="enrollment" class="btn btn-danger"
									value="등록">
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
<script>
	// just for the demos, avoids form submit
	jQuery.validator.setDefaults({
		debug : true,
		success : "valid"
	});
	var form = $("#myform");
	form.validate({
		submitHandler : function(form) {
			form.submit();
		}
	});
</script>