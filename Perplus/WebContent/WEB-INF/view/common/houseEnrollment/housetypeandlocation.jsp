<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample6_address').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('sample6_address2').focus();
					}
				}).open();
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
							<option value="${initParam.rootPath}/house/oneStepBefore.do">1
								단계</option>
							<option selected
								value="${initParam.rootPath}/house/twoStepBefore.do?houseSerial=${param.houseSerial}">2
								단계</option>
							<option
								value="${initParam.rootPath}/house/threeStepBefore.do?houseSerial=${param.houseSerial}">3
								단계</option>
							<option
								value="${initParam.rootPath}/house/fourStepBefore.do?houseSerial=${param.houseSerial}">4
								단계</option>
							<option
								value="${initParam.rootPath}/house/fiveStepBefore.do?houseSerial=${param.houseSerial}">5
								단계</option>
							<option
								value="${initParam.rootPath}/house/sixStepBefore.do?houseSerial=${param.houseSerial}">6
								단계</option>
							<option
								value="${initParam.rootPath}/house/sevenStepBefore.do?houseSerial=${param.houseSerial}">7
								단계</option>
							<option
								value="${initParam.rootPath}/house/eightStepBefore.do?houseSerial=${param.houseSerial}">8
								단계</option>
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
	src="/Perplus/css/image/logos.PNG" alt="logo" />
</a>

<!-- body -->
<div class="basicbody">
	<form action="${initParam.rootPath}/house/twoStep.do">
		<input type="hidden" name="houseSerial"
			value=<%=request.getParameter("houseSerial")%>>
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
									<select name="houseFilterRange" class="form-control">
										<option>제공범위</option>
										<option>개인실</option>
										<option>다인실</option>
									</select>
								</div>
							</div>
							<div class="col-xs-6 col-md-6 rightform">
								<div class="form-group">
									<select name="houseFilterGuestNumber" class="form-control ">
										<option value=1>게스트 수</option>
										<c:forEach begin="1" end="30" var="cnt">
											<option value="${cnt}">${cnt} 명</option>
										</c:forEach>
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
									<select name="houseFilterType" class="form-control ">
										<option>건물타입</option>
										<option>이글루</option>
										<option>아파트</option>
										<option>빌라</option>
										<option>별장</option>
									</select>
								</div>
							</div>
							<div class="col-xs-6 col-md-6 rightform">
								<div class="form-group">
									<select name="houseFilterRoomNumber" class="form-control ">
										<option value=1>방개수</option>
										<c:forEach begin="1" end="20" var="cnt">
											<option value="${cnt}">${cnt}개</option>
										</c:forEach>
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
						<div class="col-sm-12 col-md-8">
							<div class="form-group">
								<div class="col-md-7 col-sm-7"
									style="padding-left: 0px; margin-bottom: 15px;">
									<input type="text" class="form-control" id="sample6_postcode"
										name="houseFilterLocationList" placeholder="우편번호">
								</div>

								<div class="col-md-5 col-sm-5">
									<input type="button" class="form-control"
										onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
								</div>
								<div class="col-md-12"
									style="padding-left: 0px; margin-bottom: 15px;">
									<input type="text" class="form-control" id="sample6_address"
										name="houseFilterLocationList" placeholder="주소">
								</div>

								<div class="col-md-12" style="padding-left: 0px;">
									<input type="text" class="form-control" id="sample6_address2"
										name="houseFilterLocationList" placeholder="상세주소">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-condensed">
				<div
					class="col-md-offset-2 col-sm-offset-2 col-xs-offset-2 col-md-1 col-sm-1 col-xs-1 previousBtn">
					<a href="${initParam.rootPath}/basicinfo.do">
						<button type="button" class="btn btn-default">이전</button>
					</a>
				</div>
				<div
					class="col-md-offset-6 col-sm-offset-6 col-xs-offset-4 col-md-1 col-sm-1 col-xs-1 nextBtn leftform">
					<button class="btn btn-default">다음</button>
				</div>
			</div>
		</div>
	</form>
</div>







