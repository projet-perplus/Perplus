<%@ page contentType="text/html;charset=UTF-8"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>



<div id="dashboard-content">
	<div class="panel-header">
		<span>위시 리스트</span>
	</div>
	<div class="panel-body">
		<div class="row nowtravel">
			<div class="col-md-12">
				<div class="slidebar">
					<div class="carousel slide" id="myCarousel">
						<div class="carousel-inner">
							<c:choose>
								<c:when test="${requestScope.houseZzim != null}">
									<c:forEach items="${requestScope.houseZzim}" var="houseZzim">
										<div class="active item">
											<div
												class="maincon con1 col-md-offset-4 col-md-4
								           col-sm-offset-4 col-sm-4 col-xs-offset-3 col-xs-6"
												style="background-color: #ccc;">
												<div class="col-md-12">
													<div class="row con1">
														<div class="row con1">
															<div class="col-md-12" style="padding: 0px;">
															${houseZzim.house.housePicture[0].pictureName}
																<img src="" alt="asd"
																	style="width: 100%; height: 200px" />
															</div>
														</div>

														<div class="row subcon1" style="border: 1px solid #ccc;">
															<div class="row con2">
																<div class="col-md-12">
																	<span class="col-md-12"
																		style="text-align: center; padding: 5px;"></span>
																</div>
															</div>

															<div class="row con3">
																<div class="col-md-12">
																	<div class="section3"
																		style="border-top: 2px solid #ccc;">
																		<span class="col-md-12"
																			style="text-align: center; padding: 5px;">${houseZzim.house.houseTitle}</span>
																	</div>
																</div>
															</div>

															<div class="row con3">
																<div class="col-md-12">
																	<div class="section3"
																		style="border-top: 2px solid #ccc;">
																		<span class="col-md-12"
																			style="text-align: center; padding: 5px;">${houseZzim.house.houseFilter.houseFilterLocation}</span>
																	</div>
																</div>
															</div>

															<div class="row con3">
																<div class="col-md-12">
																	<div class="section3"
																		style="border-top: 2px solid #ccc;">
																		<span class="col-md-12"
																			style="text-align: center; padding: 5px;"> ${houseZzim.house.houseRating}
																		</span>
																	</div>
																</div>
															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									없음!
								</c:otherwise>
							</c:choose>

						</div>
						<!--  left right button -->
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>
				<!--/Slider-->
			</div>
		</div>
	</div>
</div>
