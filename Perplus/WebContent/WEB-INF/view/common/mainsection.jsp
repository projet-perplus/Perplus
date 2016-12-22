<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
function searchHouseByStartFilter(){
	var location=$("#location").val();
	var checkIn=$("#dpd1").val();
	var checkOut=$("#dpd2").val();
	var number=$("#guestNumber").val();
	var url ="/Perplus/housesearch.do?guestNumber="+number;
	if(checkIn.length!=0){
		url+="&checkIn="+checkIn;
	}
	if(checkOut.length!=0){
		url+="&checkOut="+checkOut;
	}
	if(location.length!=0){
		url+="&location="+location;
	}
// 	alert(url);
	window.location.href=url;
}
</script>
<!-- First Container 메인 배경 -->
<div class="container-fluid bg-1 text-center">
	<div class="mainLogo">
		<img src="/Perplus/css/image/mainLogo2.png" alt="logo">
	</div>
</div>

<!-- Second Container 필터 폼-->
<div class="filterForm">
<div class="container bg-2 text-center">
		<div class="row">
			<div class="col-md-12">
				<form method="post" action="">
					<div class="col-md-4 borderR">
						<div class="col-md-12">
							<div class="form-group">
								<label for="location">위치</label><br> <input type="text"
									class="form-control" name="location" id="location"
									placeholder="목적지 도시명 주소">
							</div>
						</div>
					</div>
					<div class="col-md-4 borderR">
						<div class="col-md-6">
							<div class="form-group">
								<label for="location">체크인</label><br> <input type="text"
									class="form-control" name="check" id="dpd1"
									placeholder="시작일">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="location">체크아웃</label><br> <input type="text"
									class="form-control" name="check" id="dpd2"
									placeholder="종료일">
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-7 borderR">
							<div class="form-group">
								<label for="secl1">인원</label> <select class="form-control"
									name="personnel" id="guestNumber">
									<c:forEach var="i" begin="1" end="100" step="1">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="col-md-5">
							<button type="button" class="btn btn-default btn-lg searchBtn" name="roomssearch"
									id="Search"  onclick="searchHouseByStartFilter()">숙소 검색</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>