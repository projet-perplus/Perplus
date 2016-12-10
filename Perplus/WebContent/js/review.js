$(function(){
	$("#addImg").on("click", function(){
		$(this).siblings("ul").append(
				$("<li/>").append(
						$("<input/>").attr({name:"pictureList", type:"file"}).addClass("imgfile")
				)
		)
	})
})