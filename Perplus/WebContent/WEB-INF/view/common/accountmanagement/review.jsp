<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
	$(document).ready(function(){
		$("#review").on("click",function(){
			$.ajax({
				url : "/Perplus/review/myReview.do",
				dataType : "JSON",
				success:function(obj){
					alert(obj);
				}
			});
		});
	});
</script>
<div class="tabsdiv">
	<div id="tabs">
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
	      	 <div class="col-md-4 col-sm-4 col-xs-4">
	      	 	<span>리뷰 제목</span>
	      	 </div>
	      	  <div class="col-md-4 col-sm-4 col-xs-4">
	      	  	<span>장소명</span>
	      	 </div>
	      	  <div class="col-md-4 col-sm-4 col-xs-4">
	      	  	<span>방문일자</span>
	      	 </div>
	      </div>
          <div class="row myReviewBody">
	      	 <div class="col-md-4 col-sm-4 col-xs-4">
	      	 	<span>리뷰 제목 list</span>
	      	 </div>
	      	  <div class="col-md-4 col-sm-4 col-xs-4">
	      	  	<span>장소명 list</span>
	      	 </div>
	      	  <div class="col-md-4 col-sm-4 col-xs-4">
	      	  	<span>방문일자 list</span>
	      	 </div>
	      </div>
      </div>
	</div>	
</div>