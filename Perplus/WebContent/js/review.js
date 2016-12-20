$(function(){
	var count =0;
	$(".addImg").on("click", function(){
		$(this).siblings("ul").append(
				$("<li/>").append(
						$("<img/>").attr({id:"preview",src:"",width:"200",alt:"로컬에 있는 이미지가 보여지는 영역"}),
						$("<input/>").attr({name:"pictureList", type:"file",id:"getfile",accept:"image/*"}).addClass("pictureList")
						
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