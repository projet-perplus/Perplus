<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
	function goPopup() {
		var pop = window.open("/popup/jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes"); //경로는 시스템에 맞게 수정하여 사용
	}
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn) {
		document.form.roadFullAddr.value = roadFullAddr;
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.engAddr.value = engAddr;
		document.form.jibunAddr.value = jibunAddr;
		document.form.zipNo.value = zipNo;
		document.form.admCd.value = admCd;
		document.form.rnMgtSn.value = rnMgtSn;
		document.form.bdMgtSn.value = bdMgtSn;
	}
</script>


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
							<option value="${initParam.rootPath}/houseshutdowndate.do">7
								단계</option>
							<option value="${initParam.rootPath}/houseprice.do">8 단계</option>
						</select>
					</div>
				</div>
				<div class="col-md-4 page_moveBtn hidden-xs hidden-sm "
					style="margin-top: 15px;">
					<span>(2/8)</span>
				</div>
			</div>
		</div>
	</div>
</div>
<a class="navbar-img" href="${initParam.rootPath}/main.do"> <img
	src="css/image/logos.PNG" alt="logo" />
</a>

<!-- body -->
<div class="basicbody">
	<div class="container">
		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection">
				<div class="row row-condensed space-4 row-sectionB">
					<label class="text-left col-sm-6 col-md-3"> <span>숙소
							유형</span>
					</label>
					<div class="col-sm-6 col-md-6">
						<div class="col-xs-6 col-md-6 leftform">
							<div class="form-group">
								<select class="form-control">
									<option>집전체</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6 col-md-6 rightform">
							<div class="form-group">
								<select class="form-control ">
									<option>게스트 1명</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection">
				<div class="row row-condensed space-4 row-sectionB">
					<label class="text-left col-sm-6 col-md-3"> <span>건물
							유형</span>
					</label>
					<div class="col-sm-6 col-md-6">
						<div class="col-xs-6 col-md-6 leftform">
							<div class="form-group">
								<select class="form-control ">
									<option>집전체</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6 col-md-6 rightform">
							<div class="form-group">
								<select class="form-control ">
									<option>게스트 1명</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row row-condensed space-4">
			<div class="col-md-offset-2 col-md-8 housesection">
				<div class="row row-condensed space-4 row-sectionB">
					<label class="text-left col-sm-6 col-md-3"> <span>숙소
							위치</span>
					</label>
					<div class="col-sm-6 col-md-6">
						<form name="form" id="form" method="post">
							<input type="button" onClick="goPopup();" value="팝업" /> 도로명주소
							전체(포멧)<input type="text" id="roadFullAddr" name="roadFullAddr" /><br>
							도로명주소 <input type="text" id="roadAddrPart1" name="roadAddrPart1" /><br>
							고객입력 상세주소<input type="text" id="addrDetail" name="addrDetail" /><br>
							참고주소<input type="text" id="roadAddrPart2" name="roadAddrPart2" /><br>
							영문 도로명주소<input type="text" id="engAddr" name="engAddr" /><br>
							지번<input type="text" id="jibunAddr" name="jibunAddr" /><br>
							우편번호<input type="text" id="zipNo" name="zipNo" /><br>
							행정구역코드 <input type="text" style="width: 500px;" id="admCd"
								name="admCd" /><br> 도로명코드<input type="text"
								style="width: 500px;" id="rnMgtSn" name="rnMgtSn" /><br>
							건물관리번호<input type="text" style="width: 500px;" id="bdMgtSn"
								name="bdMgtSn" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row houseBtns" style="margin-bottom: 30px;">
			<div class="col-md-offset-2 col-md-4 col-xs-4 previousBtn">
				<a href="${initParam.rootPath}/basicinfo.do">
					<button class="btn btn-default">이전</button>
				</a>
			</div>
			<div class="col-md-4 col-xs-8 col-md-4 nextBtn">
				<a href="${initParam.rootPath}/houselocation.do">
					<button class="btn btn-default">다음</button>
				</a>
			</div>
		</div>
	</div>
</div>










