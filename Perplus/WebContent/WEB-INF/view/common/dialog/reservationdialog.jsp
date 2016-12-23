<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
var array=[${requestScope.shutdownDate}];
var pickableRangeResult = null;
 			$(function() {
 				
 				
 				$("#housedatepicker1").multiDatesPicker({
 					addDisabledDates : array,
 					maxPicks : 2,
					altField : "#reservationDate",
					minDate : 0,
					maxDate : "+${requestScope.house.houseFilter.houseFilterReservationTerm}m",
					showOtherMonths : true,
					selectOtherMonths : true,
					yearSuffix : '년',
					monthNames : [ '1월', '2월', '3월', '4월', '5월',
							'6월', '7월', '8월', '9월', '10월', '11월',
							'12월' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금',
							'토' ],
					dateFormat : 'yy-mm-dd',
					showMonthAfterYear : true,
					onSelect: function(dateText,inst){
						
						$.ajax({
							url : '/Perplus/member/reservationDate.do',
							async : false,
							data : {
								"dateText" : dateText,
								"houseSerial" : ${param.houseSerial},
								"reservationTerm" : ${requestScope.house.houseFilter.houseFilterReservationTerm}
							},
							dataType : "json",
							beforeSend : function(){
							},
							success : function(obj){
/* 								alert(obj);
								$("#housedatepicker1").multiDatesPicker("option",{pickableRange: obj});
								}
								alert(pickableRangeResult); */
							},
							error : function(error, request, status){
								alert("에러났거든요");
							}
						});
					}
					
				});
 			});
 				
				
//  				$("#housedatepicker1").on("change", function(){
//  					alert("asdf");
//  				});
 				
 				/* $("#housedatepicker2").multiDatesPicker({
					maxPicks : 1,
 					defaultDate: '2017-01-05',
//  					addDisabledDates : [${requestScope.shutdownDate}],
 					altField : "#housedatepicker2",
 					minDate : 0,
 					maxDate : "+${requestScope.house.houseFilter.houseFilterReservationTerm}m",
 					showOtherMonths : true,
 					selectOtherMonths : true,
 					yearSuffix : '년',
 					monthNames : [ '1월', '2월', '3월', '4월', '5월',
 							'6월', '7월', '8월', '9월', '10월', '11월',
 							'12월' ],
 					dayNamesMin : [ '일', '월', '화', '수', '목', '금',
 							'토' ],
 					dateFormat : 'yy-mm-dd',
 					showMonthAfterYear : true
 				}) */
 				
 		        /* $( "#housedatepicker1" ).multiDatesPicker({
 		            onSelect: function(dateText,inst){alert(dateText);}
				}); */
 			
</script>

<div class="modal fade" id="reservationdialog" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">

	<!-- Modal content-->
	<form action="${initParam.rootPath}/member/reservation.do">
		<input type="hidden" name="memberEmail" value="${sessionScope.login_info.memberEmail}">
		<input type="hidden" name="houseSerial" value="${param.houseSerial}">
		<input type="hidden" name="travelCost" value="${requestScope.house.houseFilter.houseFilterPrice}">
		<div class="modal-dialog addfilter">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">
						예약하기<input type="text" id="reservationDate" name="reservationDate" style="display: none;">
					</h4>
				</div>

				<div class="modal-body">
					<div class="row">
						<div class="col-md-4" style="margin-bottom: 15px;">
							<button class="btn btn-primary" style="width: 100%">날짜</button>
						</div>
						<div class="col-md-8">
							<div class="form-group housedatepickerparent1">
								<!-- <input type="text" class="form-control housedatepicker1" name="travelStart"
									id="housedatepicker1" placeholder="yy-mm-dd" onchange="dd()"> -->
								<div class="housedatepicker1" id="housedatepicker1"></div>
							</div>
						</div>
						<!-- <div class="col-md-4">
							<div class="form-group">
								<input type="text" class="form-control" name="travelEnd"
									id="housedatepicker2" placeholder="yy-mm-dd" onchange="dd()">
							</div>
						</div> -->
					</div>
					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-4" style="margin-bottom: 15px;">
									<button class="btn btn-primary" style="width: 100%">인원</button>
								</div>
								<div class="col-md-8">
									<select name="travelNumber">
										<c:forEach begin="1"
											end="${requestScope.house.houseFilter.houseFilterGuestNumber}"
											var="guestNumber">
											<option>${guestNumber}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row panel-MT">
						<div class="col-md-12">
							<button class="btn btn-primary"
								style="width: 100%; margin-bottom: 5px;">체크인 시간</button>
						</div>
						<div class="col-md-12">

							<div class="form-group">
								<select class="form-control" name="travelCheckin">
									<c:forEach
										begin="${requestScope.house.houseFilter.houseFilterCheckinStart}"
										end="${requestScope.house.houseFilter.houseFilterCheckinEnd}"
										var="checkin">
										<option>${checkin}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>

					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="col-md-6 col-sm-6 col-xs-6">가격</div>
							<div class="col-md-6 col-sm-6 col-xs-6">${requestScope.house.houseFilter.houseFilterPrice}</div>
							<hr style="border: 1px solid #ddd;">

						</div>

					</div>


					<%-- 				<div class="row panel-MT">
						<div class="col-md-12">
							<div class="col-md-12">
								
								<c:choose>
									<c:when test="${requestScope.house.houseNecessaryCondition !=null}">
										<c:forEach items="${requestScope.house.houseNecessaryCondition}" var="condition">
											${condition}
										</c:forEach>
									</c:when>
									<c:otherwise>
										ㄸ.. 딱히 그런거 없으니깐..
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div> --%>

				</div>
				<div class="modal-footer">
					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="row panel-MT">
								<div
									class="col-md-offset-6 col-sm-offset-5 col-xs-offset-5 col-md-3 col-sm-3 col-xs-3">

									<button class="btn btn-default">취소</button>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-3">
									<button type="submit" class="btn btn-danger">예약</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>