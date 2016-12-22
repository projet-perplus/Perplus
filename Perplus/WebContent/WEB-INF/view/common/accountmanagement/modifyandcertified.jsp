<%@ page import="com.perplus.member.vo.MemberVo"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://rawgit.com/andrewng330/PreviewImage/master/preview.image.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$("#memberModifyForm").on("submit", function() {
			var mempassword = "${sessionScope.login_info.memberPassword}";
			if ($("#modifyPassword").val() != mempassword) {
				alert("비밀번호를 확인해 주세요.");
				$("#modifyPassword").focus();
				return false;
			}
			return confirm("저장하시겠습니까?");
		});

		$("#passwordChangeForm").on("submit", function() {
			var beforePassword1 = "${sessionScope.login_info.memberPassword}";
			var beforePassword2 = $("#beforePassword").val();
			/* 기존비밀번호 비교 */
			if (beforePassword1 != beforePassword2) {
				alert("비밀번호가 틀립니다.");
				$("#beforePassword").focus();
				return false;
			}

			if ($("#afterPassword").val() != $("#afterPasswordCheck").val()) {
				alert("변경할 비밀번호가 다릅니다.");
				return false;
			}

			return confirm("비밀번호를 변경하시겠습니까?");

		});

		$("#deleteMemberPicture").on("click", function() {
			return confirm("삭제하시겠습니까?");
		});

		$(".memberTel").on("change", function() {
			var num = $(this).val() - 1;
			if (typeof num !== "number" || num < 0) {
				alert("양수만 입력 해 주세요");
				$(this).focus();
				return false;
			}
		});
		
		
		/*썸네일 */
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

<div id="dashboard-content">
	<form action="/Perplus/member/modify.do" method="post"
		id="memberModifyForm" enctype="multipart/form-data">
		<div class="panel-header">
			<span>필수 사항</span>
		</div>
		<div class="panel-body">

			<div class="row row-maginTB">
				<div class="col-md-4 col-sm-4">
					<div class="row">
						<c:choose>
							<c:when test="${empty sessionScope.login_info.memberPicture }">
								<div class="col-md-12">
									<img id="preview" src="/Perplus/memberPicture/no-photo.png"
										width="200" height="200" style="border: solid 2px #ddd"
										alt="로컬에 있는 이미지가 보여지는 영역">
								</div>
								<div
									class="col-md-offset-5 col-md-7 col-lg-5 col-sm-offset-5 col-sm-6  col-xs-offset-4 col-xs-4">
									<label class="btn btn-success" style="margin-top: 10px;">사진
										등록 <input type="file" name="memberPictureFile" id="getfile"
										accept="image/*" value="사진등록" style="display: none;" />
									</label>
								</div>
							</c:when>

							<c:otherwise>
								<div class="col-md-12">
									<img
										src="/Perplus/memberPicture/${sessionScope.login_info.memberPicture}"
										width="200" height="200" style="border: solid 2px #ddd">
								</div>
								<div
									class="col-lg-offset-6 col-md-offset-7 col-md-4 col-sm-offset-7 col-sm-4 col-xs-offset-5">
									<a href="${initParam.rootPath}/member/memberpictureremove.do">
										<button id="deleteMemberPicture" type="button"
											class="btn btn-danger" style="margin-top: 10px;">삭제</button>
									</a>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- /row -->
				</div>
				<!-- /col-md-4 col-sm-4 -->

				<div class="col-md-8 col-sm-8">
					<div class="row row-maginTB">
						<label class="text-left col-md-3"> 이름(예: 홍길동) </label>
						<div class="col-md-9">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" id="user_name"
										name="memberName" size="10" type="text"
										value="${sessionScope.login_info.memberName}">
								</div>
							</div>
						</div>
					</div>

					<div class="row row-maginTB">
						<label class="text-left col-md-3" for="user_name"> 성별 </label>
						<div class="col-md-9">
							<div class="col-md-12">
								<div class="form-group">
									<select class="form-control" id="memberGenderSelect"
										name="memberGender">
										<c:choose>
											<c:when test="${sessionScope.login_info.memberGender == '남'}">
												<option value="">성별</option>
												<option selected>남</option>
												<option>여</option>
											</c:when>
											<c:when
												test="${sessionScope.login_info.memberGender == '녀' }">
												<option value="">성별</option>
												<option>남</option>
												<option selected>여</option>
											</c:when>
											<c:otherwise>
												<option value="">성별</option>
												<option>남</option>
												<option>녀</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>
							</div>
						</div>
					</div>

					<div class="row row-maginTB">
						<label class="text-left col-md-3"> 생년월일 </label>
						<div class="col-md-9">
							<div class="form-group">
								<div class="col-md-12">
									<input type="text" class="form-control" name="memberBirthday"
										id="datepicker1"
										value="${sessionScope.login_info.memberBirthday}">
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /col-md-8 col-sm-8 -->
			</div>
			<!-- /row row-maginTB -->

			<div class="row">
				<div class="col-md-12">
					<div class="row row-maginTB">
						<label class="text-left col-md-offset-2 col-md-2">이메일 주소 </label>
						<div class="col-md-8">
							<div class="col-md-12">
								<div class="form-group">
									<input type="email" class="form-control" id="email"
										name="memberEmail"
										value="${sessionScope.login_info.memberEmail}" disabled>
								</div>
							</div>
						</div>
					</div>
					<div class="row row-maginTB">
						<label class="text-left col-md-offset-2 col-md-2"> 전화번호 </label>
						<div class="col-md-8">
							<div class="form-group">
								<div class="col-md-12">
									<input type="number" class="form-control memberTel"
										name="memberTel" placeholder="전화번호"
										value="${sessionScope.login_info.memberTel}">
								</div>
							</div>
						</div>
					</div>
					<div class="row row-maginTB">
						<label class="text-left col-md-offset-2 col-md-2"> 거주지역 </label>
						<div class="col-md-8">

							<div class="col-md-4">
								<div class="form-group">
									<select class="form-control" name="memberLocation">
										<option>선택</option>
										<option>서울</option>
										<option>광주</option>
										<option>대구</option>
										<option>대전</option>
										<option>부산</option>
										<option>울산</option>
										<option>인천</option>
										<option>제주도</option>
										<option>울릉도</option>
										<option>독도</option>
										<option>기타</option>
										<option>해외</option>
									</select>
								</div>
							</div>

						</div>
					</div>

					<div class="row row-maginTB">
						<label class="text-left col-md-offset-2 col-md-2"> 자기소개 </label>
						<div class="col-md-8">
							<div class="col-md-12">
								<div class="form-group">
									<textarea class="form-control" rows="5" id="comment"
										name="memberIntroduction">${sessionScope.login_info.memberIntroduction}</textarea>
								</div>
							</div>
						</div>
					</div>

					<div class="row row-maginTB">
						<label class="text-left col-md-offset-2 col-md-2"> 비밀번호 </label>
						<div class="col-md-8">

							<div class="col-md-4">
								<div class="form-group">
									<input type="password" class="form-control" id="modifyPassword"
										name="memberPassword" placeholder="비밀번호 확인" required>
								</div>
							</div>

						</div>
					</div>


					<div class="row row-maginTB">
						<div class="col-md-offset-9 col-md-3">
							<div class="col-md-12">
								<input class="btn btn-primary" type="submit" value="저장"
									style="float: right;">
							</div>
						</div>
					</div>

				</div>
				<!-- /col-md-12 -->
			</div>
			<!-- /row -->
		</div>
		<!-- /panel-body -->
	</form>
	<!--  /form -->
</div>
<!--  /dashboard-content -->


<div id="dashboard-content">
	<div class="panel-header">
		<span>비밀번호 변경</span>
	</div>
	<div class="panel-body">
		<div class="row row-maginTB">
			<label class="text-left col-md-offset-2 col-md-3">기존 비밀번호 </label>
			<div class="col-md-4" style="padding-left: 0px;">
				<div class="form-group">
					<div class="col-md-12">
						<input type="password" class="form-control" id="beforePassword"
							name="beforePassword" required>
					</div>
				</div>
			</div>
		</div>



		<div class="row row-maginTB">
			<label class="text-left col-md-offset-2 col-md-3">변경할 비밀번호 </label>
			<div class="col-md-4" style="padding-left: 0px;">
				<div class="form-group">
					<div class="col-md-12">
						<input type="password" class="form-control" id="afterPassword"
							name="afterPassword" required>
					</div>
				</div>
			</div>
		</div>

		<form action="${initParam.rootPath}/member/passwordChange.do"
			id="passwordChangeForm">
			<input type="hidden" name="memberEmail"
				value="${sessionScope.login_info.memberEmail}">
			<div class="row row-maginTB">
				<label class="text-left col-md-offset-2 col-md-3">변경할 비밀번호
					확인 </label>
				<div class="col-md-4" style="padding-left: 0px;">
					<div class="form-group">
						<div class="col-md-12">
							<input type="password" class="form-control"
								id="afterPasswordCheck" name="memberPassword" required>
						</div>
					</div>
				</div>
			</div>

			<div class="row row-maginTB">
				<div class="col-md-offset-9 col-md-3">
					<div class="col-md-12">
						<input class="btn btn-primary" type="submit" value="저장"
							style="float: right;">
					</div>
				</div>
			</div>
		</form>
	</div>
</div>




<div id="dashboard-content" >
	<div class="panel-header">
		<span>본인 인증</span>
	</div>
	<div class="panel-body">
		<c:choose>

			<c:when
				test="${sessionScope.login_info.memberIdentification == null}">
				<form action="${initParam.rootPath}/member/identification.do"
					method="post" enctype="multipart/form-data">
					<div class="panel-body">


						<!-- <img id="blah" alt="your image" width="100" height="100" /> <input
							type="file"
							onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])"> -->

						<input name="memberPictureFile" type="file" value="신분증 등록" />

					</div>
					<div class="row row-condensed space-4">
						<div class="col-md-offset-9 col-md-3">
							<div class="col-md-12">
								<input class="btn btn-primary" type="submit" value="저장"
									style="float: right;">
							</div>
						</div>
					</div>
				</form>
			</c:when>

			<c:otherwise>
				<div class="panel-body" style="text-align: center">
					<span style="font-size: 20px; color: blue;">인증되었습니다.</span>
				</div>
			</c:otherwise>

		</c:choose>
	</div>
</div>