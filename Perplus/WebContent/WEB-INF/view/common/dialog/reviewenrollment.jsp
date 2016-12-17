<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript">
$(document).ready(function(){
	var file = document.querySelector('#getfile');

	file.onchange = function() {
		var fileList = file.files;

		// 읽기
		var reader = new FileReader();
		reader.readAsDataURL(fileList[0]);

		//로드 한 후
		reader.onload = function() {
			document.querySelector('#preview').src = reader.result;
		};
	};
});
	
</script>

<!-- reviewEnrollment-->
<div class="modal fade" id="reviewEnrollment" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true"
	style="padding-left: 0 !important;">
	<div class="modal-dialog reviewEnrollment-dialog"
		style="transform: translate(0, 0) !important;">
		<!-- Modal content-->
		<form action="${initParam.rootPath}/review/registerReview.do"
			method="post" enctype="multipart/form-data" id="myform">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">리뷰등록</h4>
				</div>
				<div class="modal-body">
					<div class="payoutpreferencedialog">
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3"> 리뷰제목 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewTitle"
										placeholder="제목을 입력하세요..." required> <span
										class="errorMessage"><form:errors
											path="reviewForm.reviewTitle" /></span>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3"> 장소명 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" class="form-control" name="reviewPlace"
										placeholder="장소명을 입력하세요..." required> <span
										class="errorMessage"><form:errors
											path="reviewForm.reviewPlace" /></span>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3">방문일자 </label>
							<div class="col-sm-9">
								<div class="form-group">
									<div class="visitDate">
										<input type="text" class="form-control" name="reviewTime"
											required id="datepicker2"> <span class="errorMessage"><form:errors
												path="reviewForm.reviewTime" /></span>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-sm-3 col-md-3 col-xs-3">사진 등록</label>
							<div class="col-md-9 col-xs-9 col-sm-9">
								<h3>로컬에 있는 이미지를 바로 브라우저에 표시</h3>
								<img id="preview" src="" width="200" alt="로컬에 있는 이미지가 보여지는 영역">
								<input type="file" id="getfile" accept="image/*">
								<ul></ul>
								<button type="button" class="btn btn-success addImg" id="addImg">
									이미지 추가</button>
							</div>

						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 평점 </label>
						<div class="col-sm-9">
							<div class="stars stars-example-bootstrap" style="height: 40px;">
								<select id="example-bootstrap" name="reviewRating"
									autocomplete="off" required>
									<option value="" selected>평점</option>
									<option value=1>1</option>
									<option value=2>2</option>
									<option value=3>3</option>
									<option value=4>4</option>
									<option value=5>5</option>
								</select> <span class="errorMessage"><form:errors
										path="reviewForm.reviewRating" /></span>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-left col-sm-3"> 리뷰 내용</label>
						<div class="col-sm-9">
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
							<div class="col-md-6 leftform">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" style="float: left !important;">취소</button>
							</div>
							<div class="col-md-6 rightform">
								<input type="submit" name="enrollment" class="btn btn-default"
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