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
        <li><a href="#jb-tab-3" id="review">내가 작성한 리뷰 후기</a></li>
      </ul>
      <div id="jb-tab-1">
        <p>Tabs 1 - Lorem</p>
      </div>
      <div id="jb-tab-2">
        <p>Tabs 2 - Ipsum</p>
      </div>
      <div id="jb-tab-3">
        
      </div>
	</div>	
</div>