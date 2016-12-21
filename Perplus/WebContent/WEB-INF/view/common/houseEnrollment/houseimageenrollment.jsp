<%@ page contentType="text/html;charset=UTF-8"%>
<script
	src="https://rawgit.com/andrewng330/PreviewImage/master/preview.image.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".preview").on("click", "p", function() {
					if ($('.preview img').length < 5) {
						$(".addImage").show();
					}
				});

				$(".parentImg").on("change", ".addImage", function() {
					if ($('.preview img').length == 3) {
						$(".addImage").hide();
					}
				});

				$("input[name=houseSubPicture]").previewimage({
					div : ".preview",
					imgwidth : 150,
					imgheight : 100
				});
				$(".previewimg").on(
						"click",
						".imageDelete",
						function() {
							$(".previewimg img").removeAttr("src").attr('src',
									"/Perplus/css/image/addimage.PNG");
						});
			});
</script>
<style type="text/css">
.preview>div {
	display: inline-block;
	text-align: center;
}

.previewimg>img {
	width: 100%;
}

.preview>div>img {
	margin: 5px;
}

.modal-backdrop.in {
	opacity: 0 !important;
}
</style>
<!-- header -->
<div class="basicheader">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-xs-3"></div>

			<div class="col-md-offset-5 col-md-3 col-xs-offset-5">
				<div class="col-md-8 col-xs-8 page_moveBtn">
					<div class="form-group ">
						<select class="form-control house_step">
							<option value="${initParam.rootPath}/basicinfo.do">1 단계</option>
							<option value="${initParam.rootPath}/housetypeandlocation.do">2
								단계</option>
							<option value="${initParam.rootPath}/houselocation.do">3
								단계</option>
							<option value="${initParam.rootPath}/housefacility.do">4
								단계</option>
							<option selected="selected"
								value="${initParam.rootPath}/houseimageenrollment.do">5
								단계</option>
							<option value="${initParam.rootPath}/houseschedulemanagement.do">6
								단계</option>
							<option value="${initParam.rootPath}/houseshutdowndate.do">7
								단계</option>
							<option value="${initParam.rootPath}/houseprice.do">8 단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>(5/8)</span>
				</div>
			</div>

		</div>
	</div>
</div>
<a class="navbar-img" href="${initParam.rootPath}/main.do"> <img
	src="/Perplus/css/image/logos.PNG" alt="logo" />
</a>


<!-- body -->
<div class="basicbody">
	<div class="container">
		<form action="${initParam.rootPath}/house/fiveStep.do" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="houseSerial"
				value=<%=request.getParameter("houseSerial")%>>
			<div class="row row-condensed space-4">
				<label class="text-left col-md-7 col-md-offset-2"> <span>이미지
						등록</span>
				</label>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 previewimg">
					<img id="blah" alt="your image"
						src="/Perplus/css/image/addimage.PNG" width="700" height="300" />
					<div class=" row-maginTB">
						<label class="btn btn-success mainimage"> 이미지 추가&hellip; <input
							type="file" name="houseMainPicture"
							onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])"
							style="display: none;">
						</label> <label class="btn btn-danger imageDelete">삭제</label>

					</div>
				</div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-10 parentImg">
					<span style="margin-left: 30px;">서브 이미지를 추가하세요(최대4장)</span>
					<div class="preview" style="padding-left: 30px;"></div>
					<label class="btn btn-success addImage" style="margin-left: 35px;">
						이미지 추가&hellip; <input type="file" id="getfile" name="houseSubPicture"
						accept="image/*" style="border: 0 !important; display: none;">
					</label>
				</div>
			</div>
			<div class="row row-condensed">
				<div
					class="col-md-offset-2 col-sm-offset-2 col-xs-offset-2 col-md-1 col-sm-1 col-xs-1 previousBtn">
					<a href="${initParam.rootPath}/housefacility.do">
						<button type="button" class="btn btn-default">이전</button>
					</a>
				</div>
				<div
					class="col-md-offset-6 col-sm-offset-6 col-xs-offset-4 col-md-1 col-sm-1 col-xs-1 nextBtn">
					<button class="btn btn-default">다음</button>
				</div>
			</div>
		</form>
	</div>
</div>


