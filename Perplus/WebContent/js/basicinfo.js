$(function(){
	$("#addNecessaryButton").on("click", function(){
		$(this).siblings("ul").append(
				$("<li/>").append(
						$("<input/>").attr({name:"houseNecessaryConditionList", placeholder:"추가 항목을 입력하세요..", type:"text"}).addClass("form-control")
				)
		)
	})
})