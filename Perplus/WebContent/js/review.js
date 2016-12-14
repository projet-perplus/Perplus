$(function(){
	var count =0;
	$(".addImg").on("click", function(){
		$(this).siblings("ul").append(
				$("<li/>").append(
						$("<input/>").attr({name:"pictureList", type:"file"}).addClass("imgfile")
				)
		)
		count++;
		if(count==5){
			$(".addImg").hide();
		}
	})

})