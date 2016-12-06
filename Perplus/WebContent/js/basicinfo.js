$(function(){
	$("#addNecessaryButton").on("click", function(){
		$(this).siblings("ul").append(
				$("<li/>").append(
						$("<input/>").attr({name:"necessary[]", placeholder:"추가 항목을 입력하세요.."}).addClass("form-control")
				)
		)
	})
})