<%@ page contentType="text/html;charset=UTF-8"%>
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
				
				    <div class="item" data-slide-number="5">
				    <img src="http://placehold.it/770x300&text=six"></div>
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
		<!--/Slider-->
		<!--hidden-xs-->
		<div class="row" id="slider-thumbs">
		     <!--Bottom switcher of slider -->
		     <div class="col-md-2 col-xs-2">
		     	 <a class="thumbnail" id="carousel-selector-0"><img src="http://placehold.it/170x100&text=one"></a>
		   	 </div>
		      <div class="col-md-2 col-xs-2">
		     	 <a class="thumbnail" id="carousel-selector-1"><img src="http://placehold.it/170x100&text=two"></a>
		   	 </div>
		   	  <div class="col-md-2 col-xs-2">
		     	 <a class="thumbnail" id="carousel-selector-2"><img src="http://placehold.it/170x100&text=three"></a>
		   	 </div>
		   	  <div class="col-md-2 col-xs-2">
		     	 <a class="thumbnail" id="carousel-selector-3"><img src="http://placehold.it/170x100&text=four"></a>
		   	 </div>
		   	  <div class="col-md-2 col-xs-2">
		     	 <a class="thumbnail" id="carousel-selector-4"><img src="http://placehold.it/170x100&text=five"></a>
		   	 </div>
		   	  <div class="col-md-2 col-xs-2">
		     	 <a class="thumbnail" id="carousel-selector-5"><img src="http://placehold.it/170x100&text=six"></a>
		   	 </div>
		</div>
		<div class="row">
			<div class="row housesection">
				<div class="col-md-10">
					<div class="basicbody">
						<div class="row row-condensed space-4">
							<label class="text-left col-md-3">
								<span>게시물 제목</span>
							</label>
							<div class="clearfix"></div>
						</div>
						<div class="row space-4">
							<div class="col-md-offset-1 row space-4">
								<label class="text-left col-md-8 col-xs-11"> 
									<span class="subspan">
										request
									</span>
								</label>
							</div>
						</div>
						<div class="row row-condensed space-4">
							<label class="text-left col-md-3">
								<span>내용</span>
							</label>
							<div class="clearfix visible-md-block"></div>
						</div>
						<div class="row space-4">
							<div class="col-md-offset-1 row space-4">
								<label class="text-left col-md-8 col-xs-11"> 
									<span class="subspan">
										request
									</span>
								</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="row row-condensed space-4">
				<div class="col-md-3">
					a
				</div>
				<div class="col-md-7">
					<input type="text" class="form-control" name="review"
							placeholder="후기를 입력하세요">
				</div>
				<div class="col-md-2">
					<button class="btn btn-default">작성</button>
				</div>							
			</div>
		</div>
	 </div>
 </div>
 
