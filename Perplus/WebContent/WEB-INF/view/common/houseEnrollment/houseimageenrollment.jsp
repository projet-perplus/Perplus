<%@ page contentType="text/html;charset=UTF-8"%>
<script
	src="https://rawgit.com/andrewng330/PreviewImage/master/preview.image.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var count = 0;
		$("input[name=file1]").previewimage({
			div : ".preview",

			imgheight : 300
		})

		$("input[name=file2]").previewimage({
			div : ".preview1",

			imgheight : 150
		});

	});
</script>
<style type="text/css">
.preview>div>img {
	width: 100% !important;
}

.preview1>div>img {
	width: 100% !important;
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
				<div class="col-md-offset-2 col-md-8">
					<div class="preview"
						style="width: 100%; height: 300px; border: 1px solid #ccc;"></div>

					<label class="btn btn-success addImage"> 이미지 추가&hellip; <input
						type="file" name="file1" accept="image/*"
						style="border: 0 !important; display: none;">

					</label>
				</div>
			</div>

			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8">

					<div class="col-md-3">
						<div class="preview1"
							style="width: 100%; height: 150px; border: 1px solid #ccc;"></div>

						<label class="btn btn-success addImage"> 이미지 추가&hellip; <input
							type="file" name="file2" accept="image/*"
							style="border: 0 !important; display: none;">

						</label>
					</div>

				</div>
			</div>

			<div class="row row-condensed space-4">
				<label class="text-left col-md-offset-1 col-md-2">사진 등록</label>
				<div class="col-md-9 col-xs-9 col-sm-9">
					<span>이미지를 추가하세요(최대 5장)</span>
					<div class="preview1"></div>
					<label class="btn btn-success addImage"> 이미지 추가&hellip; <input
						type="file" name="file2" accept="image/*"
						style="border: 0 !important; display: none;">
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


