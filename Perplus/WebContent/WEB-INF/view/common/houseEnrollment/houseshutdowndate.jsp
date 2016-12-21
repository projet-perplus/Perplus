<%@ page contentType="text/html;charset=UTF-8"%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/Perplus/js/jquery-ui.multidatespicker.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" type="text/css" href="/Perplus/css/mdp.css">
<link rel="stylesheet" type="text/css" href="/Perplus/css/prettify.css">

<script type="text/javascript">
	var today = new Date();
	var y = today.getFullYear();

	$(function() {
		$("#datepicker").multiDatesPicker(
				{
					minDate : 0,
					altField : '#shutdownDate',
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					yearSuffix : '년',
					dateFormat : 'yy-mm-dd',
				});
	});
</script>

<style>
/* .ui-datepicker-prev, .ui-datepicker-next {
	display: none !important;
} */

/* .ui-datepicker-inline {
	font-size: 25px;
}

.ui-datepicker-inline .ui-datepicker .ui-widget .ui-widget-content .ui-helper-clearfix .ui-corner-all{
	height: 100%;
}
 
.ui-state-default{
	height: 100%;
}
 */
/*
.ui-datepicker-week-end {
	height: 2em !important;
} */
.ui-datepicker td span, .ui-datepicker td a {
	display: block;
	padding: .2em;
	text-align: right;
	text-decoration: none;
	width: 47px;
	height: 53px;
	line-height: 54px;
	float: left;
	margin: 2px;
	cursor: pointer;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.ui-datepicker-inline {
	width: 100%;
}

.ui-state-default ui-state-highlight ui-state-active{
	border: 1px solid #c5c5c5;
	background: #f6f6f6;
}

.ui-state-highlight, .ui-widget-content .ui-state-highlight,
	.ui-widget-header .ui-state-highlight {
	border: 0 !important;
	background: inherit !important;
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
							<option value="${initParam.rootPath}/houseimageenrollment.do">5
								단계</option>
							<option value="${initParam.rootPath}/houseschedulemanagement.do">6
								단계</option>
							<option selected="selected"
								value="${initParam.rootPath}/houseshutdowndate.do">7 단계</option>
							<option value="${initParam.rootPath}/houseprice.do">8 단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>(7/8)</span>
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
		<form action="${initParam.rootPath}/house/sevenStep.do">
			<input name="shutdownDateList" id="shutdownDate" type="text"
				style="display: none;"> <input type="hidden"
				name="houseSerial" value=<%=request.getParameter("houseSerial")%>>
			<div class="row row-condensed space-4">
				<label class="text-left col-md-7 col-md-offset-2"> <span>호스팅을
						원하지 않는 날짜를 차단하려면 클릭하세요 </span>
				</label>
				<div class="clearfix visible-md-block"></div>
			</div>
			<div class="row row-condensed space-4">
				<div class="col-md-offset-2 col-md-8 housesection ">
					<div class="row row-condensed space-4 row-sectionB">
						<div class="clearfix visible-md-block"></div>
						<div class="col-md-offset-1 col-md-10">
							<div class=" col-md-12">
								<div class="datepicker" id="datepicker"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row houseBtnMB">
				<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
					<a href="${initParam.rootPath}/houseschedulemanagement.do">
						<button type="button" class="btn btn-default">이전</button>
					</a>
				</div>
				<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
					<button class="btn btn-default">다음</button>
				</div>
			</div>
		</form>
	</div>
</div>