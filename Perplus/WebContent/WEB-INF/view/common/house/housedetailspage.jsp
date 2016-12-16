<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWDGjKV2YFKGM5q6gtx-J5GcJTa2wLDQU"
	type="text/javascript"></script>
<script src="/Perplus/js/map.js"></script>

<script type="text/javascript" src="/Perplus/js/date-range-picker.js"></script>
<link rel="stylesheet" href="/Perplus/css/date-range-picker.css">
<style>
.bg-4 {
	position: relative;
}
</style>

<div class="container reviewslide">
	<div class="row">
		<div class="slidebar">
			<div class="carousel slide" id="myCarousel">
				<div class="carousel-inner">
					<div class="active item">
						<img src="http://placehold.it/770x300&text=one">
					</div>

					<div class="item">
						<img src="http://placehold.it/770x300&text=two">
					</div>

					<div class="item">
						<img src="http://placehold.it/770x300&text=three">
					</div>

					<div class="item">
						<img src="http://placehold.it/770x300&text=four">
					</div>

					<div class="item">
						<img src="http://placehold.it/770x300&text=five">
					</div>
				</div>
				<!--  left right button -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>
	<!--/Slider-->
	<!--hidden-xs-->
	<div class="row" id="slider-thumbs" style="margin-top: 10px;">
		<!--Bottom switcher of slider -->
		<ul>
			<li><a class="thumbnail" id="carousel-selector-0"><img
					src="http://placehold.it/170x100&text=one"></a></li>
			<li><a class="thumbnail" id="carousel-selector-1"><img
					src="http://placehold.it/170x100&text=two"></a></li>
			<li><a class="thumbnail" id="carousel-selector-2"><img
					src="http://placehold.it/170x100&text=three"></a></li>
			<li><a class="thumbnail" id="carousel-selector-3"><img
					src="http://placehold.it/170x100&text=four"></a></li>
			<li><a class="thumbnail" id="carousel-selector-4"><img
					src="http://placehold.it/170x100&text=five"></a></li>
		</ul>
	</div>

	<div class="row row-condensed space-4">
		<div class="col-md-8">
			<div class="col-md-9">
				<div class="row row-maginTB">
					<label class="text-left col-md-4 "> <span class="rowFT">게시물
							제목</span>
					</label>
					<div class="col-md-7">request</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-md-offset-1">지역</div>
					<div class="col-md-4">별점</div>
					<div class="col-md-3">후기 개수</div>
				</div>

				<div class="row row-maginTB space-4">
					<div class="col-md-8 rowFT">상세 설명</div>
					<div class="clearfix"></div>
				</div>

				<div class="row">
					<div class="col-md-offset-1 col-md-8">내용</div>
					<div class="clearfix"></div>
				</div>

				<div class="row row-condensed space-4">
					<div class="col-md-8 rowFT">옵션</div>
					<div class="clearfix"></div>
				</div>

				<div class="row row-condensed space-4">
					<div class="col-md-8 col-md-offset-1">옵션 리스트</div>
					<div class="clearfix"></div>
				</div>

				<div class="row row-condensed space-4">
					<div class="col-md-8">
						<div class="col-md-6 rowFT" style="padding-left: 0px;">후기</div>
						<div class="col-md-6">별점</div>
					</div>
					<div class="clearfix"></div>
				</div>

				<div class="row row-condensed space-4">
					<div class="col-md-8 col-md-offset-1">
						후기리스트
						<div class="clearfix"></div>
					</div>
				</div>
			</div>

			<div class="col-md-3">찜</div>

		</div>
		<!-- /col-md-8 -->


		<div class="col-md-4">
			<!-- right date -->

			<div class="col-md-12">
				<div class="row ">
					달력

				</div>
			</div>


			<a href="${initParam.rootPath}/message.do#popup"><button
					class="btn btn-primary">호스트와 연락</button></a>


			<form action="${initParam.rootPath}/member/chatting.do">
				<input type="hidden" name="memberEmail"
					value="${sessionScope.login_info.memberEmail}" /> <input
					type="submit" />
			</form>

		</div>

	</div>

	<div class="row row-condensed space-4">
		<div id="map-canvas"
			style="width: 100%; height: 300px; padding: 15px;"></div>
	</div>

</div>