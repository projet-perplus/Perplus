<%@ page contentType="text/html;charset=UTF-8"%>

<script type="text/javascript">
// $(document).ready(
// 		function() {
// 			$(function() {
// 				$("#housedatepicker1").on("click",function(){
// 					$("#housedatepicker1").val("");
// 				});
			
// 				$("#housedatepicker1").datesPicker({
// 						addDisabledDates : [${requestScope.shutdownDate}],
// 						altField : "#housedatepicker1",
// 						minDate : 0,
// 						maxDate : "+${requestScope.house.houseFilter.houseFilterReservationTerm}m",
// 						showOtherMonths : true,
// 						selectOtherMonths : true,
// 						yearSuffix : '년',
// 						monthNames : [ '1월', '2월', '3월', '4월', '5월',
// 								'6월', '7월', '8월', '9월', '10월', '11월',
// 								'12월' ],
// 						dayNamesMin : [ '일', '월', '화', '수', '목', '금',
// 								'토' ],
// 						dateFormat : 'yy-mm-dd',
// 						showMonthAfterYear : true
// 				}).on('changeDate', function(ev) {
// 					if (ev.date.valueOf() > checkout.date.valueOf()) {
// 						var newDate = new Date(ev.date)
// 						newDate.setDate(newDate.getDate() + 1);
// 						checkout.setValue(newDate);
// 					}
// 					$('#housedatepicker2')[0].focus();
// 				});
				
				
// 				$("#housedatepicker2").datesPicker({
// 					addDisabledDates : [${requestScope.shutdownDate}],
// 					altField : "#housedatepicker2",
// 					minDate : 0,
// 					maxDate : "+${requestScope.house.houseFilter.houseFilterReservationTerm}m",
// 					showOtherMonths : true,
// 					selectOtherMonths : true,
// 					yearSuffix : '년',
// 					monthNames : [ '1월', '2월', '3월', '4월', '5월',
// 							'6월', '7월', '8월', '9월', '10월', '11월',
// 							'12월' ],
// 					dayNamesMin : [ '일', '월', '화', '수', '목', '금',
// 							'토' ],
// 					dateFormat : 'yy-mm-dd',
// 					showMonthAfterYear : true
// 				});
// 			});
// 		});
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
							<div class="form-group">
								<input type="text" class="form-control" name="check" id="housedatepicker1"
									placeholder="yy-mm-dd">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="text" class="form-control" name="check" id="housedatepicker2"
									placeholder="yy-mm-dd">
							</div>
						</div>
					</div>
					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-4" style="margin-bottom: 15px;">
									<button class="btn btn-primary" style="width: 100%">인원</button>
								</div>
								<div class="col-md-8">인원 알아서 ..</div>
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
									<option>1시</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
						</div>
					</div>

					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="col-md-6 col-sm-6 col-xs-6">a</div>
							<div class="col-md-6 col-sm-6 col-xs-6">a</div>
							<hr style="border: 1px solid #ddd;">

						</div>

					</div>

					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="col-md-6 col-sm-6 col-xs-6">a</div>
							<div class="col-md-6 col-sm-6 col-xs-6">a</div>
							<hr style="border: 1px solid #ddd;">
						</div>
					</div>

					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="col-md-6 col-sm-6 col-xs-6">a</div>
							<div class="col-md-6 col-sm-6 col-xs-6">a</div>
							<hr style="border: 1px solid #ddd;">
						</div>
					</div>

					<div class="row panel-MT">
						<div class="col-md-12">
							<div class="col-md-12">
								숙소 이용 규칙 1<br> 2<br>
							</div>
						</div>
					</div>

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