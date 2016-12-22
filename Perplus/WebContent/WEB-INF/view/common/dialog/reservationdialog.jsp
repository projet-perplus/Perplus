<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
 			$(function() {
 				
 				
 				$("#housedatepicker1").multiDatesPicker({
 						maxPicks : 1,
 						addDisabledDates : [${requestScope.shutdownDate}],
 						altField : "#housedatepicker1",
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
 				}).on('changeDate', function() {
 					alert("asdf");
 					/* if (ev.date.valueOf() > checkout.date.valueOf()) {
 						var newDate = new Date(ev.date)
 						newDate.setDate(newDate.getDate() + 1);
 						checkout.setValue(newDate);
 					}
 					$('#housedatepicker2').focus(); */
 				}).on('click', function(){
 					$("#housedatepicker1").multiDatesPicker('resetDates','picked');
 				});
				
 				$("#housedatepicker2").multiDatesPicker({
					maxPicks : 1,
 					defaultDate: '2017-01-05',
 					addDisabledDates : [${requestScope.shutdownDate}],
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
 				}).on('click', function(){
 					$("#housedatepicker2").multiDatesPicker('resetDates','picked');
 				});
 			});
 			
</script>

<div class="modal fade" id="reservationdialog" role="dialog"
	aria-labelledby="basicModal" aria-hidden="true">

	<!-- Modal content-->
	<form action="">
		<div class="modal-dialog addfilter">
			<div class="modal-content" style="padding: 0px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">예약하기</h4>
				</div>

				<div class="modal-body">
					<div class="row">
						<div class="col-md-4" style="margin-bottom: 15px;">
							<button class="btn btn-primary" style="width: 100%">날짜</button>
						</div>
						<div class="col-md-4">
							<div class="form-group housedatepickerparent1">
								<input type="text" class="form-control" name="check"
									id="housedatepicker1" placeholder="yy-mm-dd">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="text" class="form-control" name="check"
									id="housedatepicker2" placeholder="yy-mm-dd">
							</div>
						</div>
					</div>
					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-4" style="margin-bottom: 15px;">
									<button class="btn btn-primary" style="width: 100%">인원</button>
								</div>
								<div class="col-md-8">
									<select>
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
								<select class="form-control">
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