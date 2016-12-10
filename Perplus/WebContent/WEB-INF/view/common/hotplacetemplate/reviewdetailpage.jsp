<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<style>

</style>
<div class="container reviewslide">
	<div class="row">
		<div class="slidebar">
			<div class="carousel slide" id="myCarousel">
				<div class="carousel-inner">
				    <div class="active item" data-slide-number="0">
				    <img src="http://placehold.it/770x300&text=one"></div>
				
				    <div class="item" data-slide-number="1">
				    <img src="http://placehold.it/770x300&text=two"></div>
				
				    <div class="item" data-slide-number="2">
				    <img src="http://placehold.it/770x300&text=three"></div>
				
				    <div class="item" data-slide-number="3">
				    <img src="http://placehold.it/770x300&text=four"></div>
				
				    <div class="item" data-slide-number="4">
				    <img src="http://placehold.it/770x300&text=five"></div>
				</div>
				<!--  left right button -->
		        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		            <span class="glyphicon glyphicon-chevron-left"></span>                                       
		        </a>
		        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		            <span class="glyphicon glyphicon-chevron-right"></span>                                       
		        </a>         	                       
			</div>	
		</div>
	 </div>
   <!--/Slider--><!--hidden-xs-->
   <div class="row" id="slider-thumbs" style="margin-top:10px">
      <!--Bottom switcher of slider -->
      <ul>
         <li>
            <a class="thumbnail" id="carousel-selector-0"><img src="http://placehold.it/170x100&text=one"></a>
         </li>
         <li>
            <a class="thumbnail" id="carousel-selector-1"><img src="http://placehold.it/170x100&text=two"></a>
         </li>
         <li>
            <a class="thumbnail" id="carousel-selector-2"><img src="http://placehold.it/170x100&text=three"></a>
         </li>
         <li>
            <a class="thumbnail" id="carousel-selector-3"><img src="http://placehold.it/170x100&text=four"></a>
         </li>
         <li>
            <a class="thumbnail" id="carousel-selector-4"><img src="http://placehold.it/170x100&text=five"></a>
         </li>
      </ul>
   </div>
	
	
	<div class="housesection">
		<div class="row row-condensed space-4">
			<label class="text-left col-md-2">
				<span>작성자</span>
			</label>
			<div class="col-md-6">
				${requestScope.review.memberEmail }
			</div>	
		 </div>
		<div class="row row-condensed space-4">
			<label class="text-left col-md-2">
				<span>리뷰 제목</span>
			</label>
			<div class="col-md-6">
				 ${requestScope.review.reviewTitle }
			</div>	
		 </div>
		 <div class="row row-condensed space-4">
			<label class="text-left col-md-2">
				<span>장소명</span>
			</label>
			<div class="col-md-6">
				 ${requestScope.review.reviewPlace }
			</div>	
		 </div>
		 <div class="row row-condensed space-4">
			<label class="text-left col-md-2">
				<span>방문일자</span>
			</label>
			<div class="col-md-6">
				<%-- <fmt:formatDate value="${requestScope.review.reviewTime}" pattern="yyyy-MM-dd"/> --%>
				${requestScope.review.reviewTime}
			</div>	
		 </div>
	     <div class="row row-condensed space-4">
			<label class="text-left col-md-2">
				<span>평점</span>
			</label>
			<div class="col-md-6">
				 ${requestScope.review.reviewRating }
			</div>	
		 </div>
	     <div class="row row-condensed space-4">
			<label class="text-left col-md-2">
				<span>내용</span>
			</label>
			<div class="col-md-6">
				 ${requestScope.review.reviewContent }
			</div>	
		</div>
	</div>
	
   <div class="row row-condensed space-4">
      <div class="col-md-1">
         <div class="stars stars-example-bootstrap">
           <select id="example-bootstrap" name="rating" autocomplete="off">
             <option value="1">1</option>
             <option value="2">2</option>
             <option value="3">3</option>
             <option value="4">4</option>
             <option value="5">5</option>
           </select>
         </div>
      </div>
      <div class="col-md-2">
      작성자
      </div>
      <div class="col-md-7">
         <input type="text" class="form-control" name="review"
               placeholder="후기를 입력하세요">
      </div>
      <div class="col-md-2">
         <button class="btn btn-default">작성</button>
      </div>                     
   </div>
   
   <c:forEach items="${requestScope.review.reviewComment }" var="comment">
   <div class="row row-condensed space-4">
      <div class="col-md-1">
         <div class="stars stars-example-bootstrap">
          	${comment.commentRating }
         </div>
      </div>
      <div class="col-md-2">
      	${comment.memberEmail }
      </div>
      <div class="col-md-7">
          ${comment.commentContent }
      </div>
<!--       <div class="col-md-2">
         <button class="btn btn-default">작성</button>
      </div>    -->                  
   </div>
   </c:forEach>
</div>
