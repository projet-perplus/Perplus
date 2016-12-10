<%@page import="com.perplus.member.vo.MemberVo"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(document).ready(function() {
		$("#memberModifyForm").on("submit", function() {
			if ($("#memberGenderSelect").val() == "성별") {
				alert("성별을 선택해 주세요.");
				return false;
			}
		});
	});
</script>

<div id="dashboard-content">
	<form action="/Perplus/member/modify.do" method="post"
		id="memberModifyForm" enctype="multipart/form-data">
		<div class="panel-header">
			<span>필수 사항</span>
		</div>
		<div class="panel-body">
			<div class="row" style="margin-bottom: 15px;">
				<div class="col-sm-3">
					<c:choose>
						<c:when test="${empty sessionScope.login_info.memberPicture }">
							<img src="/Perplus/memberPicture/no-photo.png" width="200"
								height="200">
						</c:when>
						<c:otherwise>
							<img
								src="/Perplus/memberPicture/${sessionScope.login_info.memberPicture}"
								width="200" height="200">
						</c:otherwise>
					</c:choose>
					<input type="file" name="memberPictureFile" value="사진등록" />
				</div>
				<div class="col-sm-9">
					<div class="row row-condensed space-4">
						<label class="text-right col-sm-3"> 이름(예: 홍길동) </label>
						<div class="col-sm-9">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" id="user_name"
										name="memberName" size="10" type="text"
										value="${sessionScope.login_info.memberName}">
								</div>
							</div>
						</div>
					</div>

					<div class="row row-condensed space-4">
						<label class="text-right col-md-3" for="user_name"> 성별 </label>
						<div class="col-sm-9">
							<div class="col-md-12">
								<div class="form-group">
									<select class="form-control" id="memberGenderSelect"
										name="memberGender">
										<option>성별</option>
										<c:choose>
											<c:when test="${sessionScope.login_info.memberGender == '남'}">
												<option selected>남</option>
												<option>녀</option>
											</c:when>
											<c:when
												test="${sessionScope.login_info.memberGender == '녀' }">
												<option>남</option>
												<option selected>녀</option>
											</c:when>
											<c:otherwise>
												<option>남</option>
												<option>녀</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-right col-md-3"> 생년월일 </label>
						<div class="col-sm-9">
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
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="row row-condensed space-4">
						<label class="text-right col-md-3"> 이메일 주소 </label>
						<div class="col-sm-9">
							<div class="col-md-12">
								<div class="form-group">
									<input type="email" class="form-control" id="email"
										name="memberEmail"
										value="${sessionScope.login_info.memberEmail}" disabled>
								</div>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-right col-sm-3"> 비밀번호 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<div class="col-md-12">
									<input type="password" class="form-control" id="password"
										name="memberPassword" required="required">
								</div>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-right col-sm-3"> 전화번호 </label>
						<div class="col-sm-9">
							<div class="form-group">
								<div class="col-md-12">
									<input type="number" class="form-control" name="phone"
										required="required" placeholder="전화번호">
								</div>
							</div>
						</div>
					</div>
					<div class="row row-condensed space-4">
						<label class="text-right col-sm-3"> 거주지역 </label>
						<div class="col-sm-9">
							<div class="col-md-12">
								<div class="col-sm-4" style="padding-left: 0px;">
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
						<div class="row row-condensed space-4">
							<label class="text-right col-sm-3"> 자기소개 </label>
							<div class="col-sm-9">
								<div class="col-md-12">
									<div class="form-group">
										<textarea class="form-control" rows="5" id="comment"
											name="memberIntroduction">${sessionScope.login_info.memberIntroduction}</textarea>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<div class="col-sm-9"></div>
							<div class="col-sm-3">
								<div class="col-md-12">
									<input class="btn btn-primary" type="submit" value="저장"
										style="float: right;">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<div id="dashboard-content">
	<form action="">
		<div class="panel-header">
			<span>본인 인증</span>
		</div>
		<div class="panel-body">
			<input type="file" value="신분증 등록" /> <img src="" alt="" />
		</div>
		<div class="row row-condensed space-4">
			<div class="col-sm-9"></div>
			<div class="col-sm-3">
				<div class="col-md-12">
					<input class="btn btn-primary" type="submit" value="저장"
						style="float: right;">
				</div>
			</div>
		</div>
	</form>
</div>
