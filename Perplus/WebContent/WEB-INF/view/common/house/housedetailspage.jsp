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
				    <div class="active item">
				    <img src="http://placehold.it/770x300&text=one"></div>
				
				    <div class="item">
				    <img src="http://placehold.it/770x300&text=two"></div>
				
				    <div class="item">
				    <img src="http://placehold.it/770x300&text=three"></div>
				
				    <div class="item">
				    <img src="http://placehold.it/770x300&text=four"></div>
				
				    <div class="item">
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
    <div class="row" id="slider-thumbs" style="margin-top: 10px;">
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

		<div class="row row-condensed space-4">
			<div class="col-md-5">
				<div class="row">
					<label class="text-left col-md-2">
						<span>게시물 제목</span>
					</label>
					<div class="col-md-6">
						request
					</div>
				 </div>
				</div>
				<div class="row">
					<div class="col-md-4">
					 a
					</div>
					<div class="col-md-4">
					a
					</div>
					<div class="col-md-4">
					a
					</div>
				</div>
			</div>
			<div class="col-md-3">
				b
			</div>
			<div class="col-md-4">
				c
			</div>

		

<!-- <label class="text-left col-md-2">
				<span>게시물 제목</span>
			</label>
			<div class="col-md-6">
				request
			</div>
		 </div>
 -->
</div>
