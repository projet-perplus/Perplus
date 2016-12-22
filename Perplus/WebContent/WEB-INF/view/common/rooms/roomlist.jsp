<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.bg-4{
	position:relative;
}
</style>
<div id="dashboard-content">
	<div class="panel-header">
		<span>숙소목록</span>

	</div>
	<div class="panel-body">
		<div class="row" style="margin-bottom:20px;">
			<div class="col-md-12">
				<a href="${initParam.rootPath}/hosting.do"><button class="btn btn-success">호스팅 하기</button></a>
			</div>
		</div>
		<div class="row houselist">
			<div class="col-md-offset-3 col-sm-offset-3 col-xs-offset-1">
			
				<!-- 목록 하나 -->			
				<c:forEach items="${requestScope.houseList }" var="houseList">
				<a href="${initParam.rootPath }/house/houseDetail.do?houseSerial=${houseList.houseSerial}">
					<div class="col-md-4 col-sm-8 col-xs-11"
						style="margin-right: 15px; margin-bottom: 15px;">
						<div class="col-md-12">
							<div class="row con1">
								<div class="row con1">
									<div class="col-md-12" style="padding: 0px;">
										<c:choose>
											<c:when test="${empty houseList.housePicture }">
													<img src="${initParam.rootPath }/housePicture/no-images.png" alt="asd"
														style="width: 100%; height: 200px" />
											</c:when>
											<c:otherwise>
													<img src="/Perplus/housePicture/${houseList.housePicture[0].pictureName }" alt="asd"
														style="width: 100%; height: 200px" />
													</c:otherwise>
										</c:choose>
									</div>
								</div>
	
								<div class="row subcon1" style="border: 1px solid #ccc;">
									<div class="row con2">
										<div class="col-md-12">
											<span class="col-md-12"
												style="text-align: center; padding: 5px;">숙소 제목
												${houseList.houseTitle }</span>
										</div>
									</div>
	
									<div class="row con3">
										<div class="col-md-12">
											<div class="section3" style="border-top: 2px solid #ccc;">
												<span class="col-md-12"
													style="text-align: center; padding: 5px;"> 숙소 위치 :
													${houseList.houseFilter.houseFilterLocation }</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</a>
				</c:forEach>
				<!-- /목록 하나 -->			
			</div>
		</div>

	</div>
</div>

