<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<div id="dashboard-content">
	<div class="panel-header">
		<div class="history">
			<div class="row">
				<div class="col-xs-2">
					<a href="${initParam.rootPath}/completionhistory.do">수령 완료 내역</a>
				</div>
				<div class="col-xs-2">
					<a href="${initParam.rootPath}/receipthistory.do">수령예정 내역</a>
				</div>
				<div class="col-xs-2">
					<a href="${initParam.rootPath}/totalrevenue.do">총 수익</a>
				</div>
				<div class="col-xs-6">
				
				</div>
		
			</div>
		</div>	
	</div>
	<div class="panel-body">
		<div class="row"><!--  style="height:250px;" -->
			<div class="col-xs-12"> <!-- style="padding:30px;" -->
				<tiles:insertAttribute name="middlemenu"/>
			</div>
		</div>
	</div>	
</div>	