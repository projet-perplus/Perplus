<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
	$(document).ready(function(){
		$("#review").on("click",function(){
			$.ajax({
				url : "/Perplus/review/myReview.do",
				dataType : "JSON",
				success : function(obj){
					for(var i=0; i<obj.length;i++){
					
						$(".myReviewBody").append(
								"<div class='review'>"
									+"<input id='reviewSerial' type='hidden' name='reviewSerial' value="+obj[i].reviewSerial+">"
			    		   		    +"<div class='col-md-2 col-sm-2 col-xs-2 no'  style='margin-top:20px; padding-top: 10px; height: 40px;'>"+(i+1) +"</div>"
				    		     	+"<div class='col-md-3 col-sm-3 col-xs-3 title'  style='margin-top:20px; padding-top: 10px; height: 40px;'>" +obj[i].reviewTitle +"</div>"
				   	                +"<div class='col-md-3 col-sm-3 col-xs-3 place'  style='margin-top:20px; padding-top: 10px; height: 40px;'>"+obj[i].reviewPlace +"</div>"
				   				    + "<div class='col-md-3 col-sm-3 col-xs-3 date'  style='margin-top:20px; padding-top: 10px; height: 40px;'>"+obj[i].reviewTime+"</div>"
				   			+ "</div>"
				   			
						);
						if(i>7){
			   				$(".bg-4").css("position","relative");
			   			}
				}
			}
		});
			$(".myReviewBody").on("mouseover",".review",function(){
				$(this).css({"color":"red","cursor":"pointer"});
			}).on("mouseout",".review",function(){
				$(this).css("color","black");
			}).on("click",".review",function(){
				var serial = $(this).find("#reviewSerial").val();
				var url="/Perplus/review/showReview.do?reviewSerial="+serial;
				$(location).attr("href",url);
		});
	});
});
</script>

<div class="tabsdiv">
	<div id="tabs" style=" min-height: 350px;">
		<ul>
			<li><a href="#jb-tab-1">나에 대한 후기</a></li>
			<li><a href="#jb-tab-2">내가 작성한 후기 </a></li>
			<li><a href="#jb-tab-3" id="review">내가 작성한 리뷰</a></li>
		</ul>
		<div id="jb-tab-1">
			<p>Tabs 1 - Lorem</p>
		</div>
		<div id="jb-tab-2">
			<p>Tabs 2 - Ipsum</p>
		</div>
		<div id="jb-tab-3">
			<div class="row myReviewHeader">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<span>번호</span>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3">
					<span>리뷰 제목</span>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3">
					<span>장소명</span>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3">
					<span>방문일자</span>
				</div>
			</div>
			<div class="row myReviewBody"></div>
		</div>
	</div>
</div>