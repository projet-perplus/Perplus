<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="dashboard-content">
	<div class="panel-header">
		<span>대금 수령 방법</span>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-xs-offset-2 col-xs-8" style="text-align: center;">
				<div class="row">
					<div class="col-md-3">a</div>
					<div class="col-md-3">a</div>
					<div class="col-md-3">a</div>
				</div>

				<div class="row">
					<div class="col-md-3">b</div>
					<div class="col-md-3">b</div>
					<div class="col-md-3">b</div>
					<div class="col-md-1">
						<a href=""><button>X</button></a>
					</div>
				</div>


				<span>대금을 지급받으려면 대금 수령 방법을 설정해야 합니다 .</span><br>
				<button>
					<span data-toggle="modal" data-target="#payoutpreference">대금
						수령 계좌 추가</span>
				</button>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
