$(function(){
	var count =0;
	$(".addImg").on("click", function(){
		$(this).siblings("ul").append(
				$("<li/>").append(
						$("<input/>").attr({name:"pictureList", type:"file"}).addClass("pictureList")
				)
		)
		count++;
		
		if(count>3){
			$(".modal-backdrop").css("height","790px !important;")
		}
		
		if(count==5){
			$(".addImg").hide();
		}
	})

})