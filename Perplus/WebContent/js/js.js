$(function() {
	/* 체크인 체크아웃 */
	var nowTemp = new Date();
	var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp
			.getDate(), 0, 0, 0, 0);

	var checkin = $('#dpd1').datepicker({
		showOtherMonths : true,
		selectOtherMonths : true,
		format : 'yyyy-mm-dd',
		onRender : function(date) {
			return date.valueOf() < now.valueOf() ? 'disabled' : '';
		}
	}).on('focus', function(ev) {
		$('#dpd1').val("");
	}).on('changeDate', function(ev) {
		if (ev.date.valueOf() > checkout.date.valueOf()) {
			var newDate = new Date(ev.date)
			newDate.setDate(newDate.getDate() + 1);
			checkout.setValue(newDate);
		}
		checkin.hide();
		$('#dpd2')[0].focus();
	}).data('datepicker');

	var checkout = $('#dpd2').datepicker({
		showOtherMonths : true,
		selectOtherMonths : true,
		format : 'yyyy-mm-dd',
		onRender : function(date) {
			return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
		}
	}).on('focus', function(ev) {
		$('#dpd2').val("");
	}).on('changeDate', function(ev) {
		checkout.hide();
	}).data('datepicker');

	/* 서브메뉴 active */
	var main = $(".submenu_ul").data("main")

	$("#myNavbar1>ul>li[data-page=" + main + "]").addClass("active")

	$(".submenu_ul>li").each(
			function() {
				if (window.location.href.indexOf($(this).data("sub")) != -1) {
					$(this).addClass("active").siblings(".active").removeClass(
							"active")
				}
			});
	$(".navbar-nav1>li").each(
			function() {
				if (window.location.href.indexOf($(this).data("sub")) != -1) {
					$(this).addClass("active").siblings(".active").removeClass(
							"active")
				}
			});

	
	$(".house_step").change(function(ev) {
        location.href = jQuery(this).val();
    })

    
	$('#myCarousel').carousel({
		interval : 5000
	});
	$('#carousel-text').html($('#slide-content-0').html());

	/* //Handles the carousel thumbnails */
	$('[id^=carousel-selector-]').click(function() {
		var id = this.id.substr(this.id.lastIndexOf("-") + 1);
		var id = parseInt(id);
		$('#myCarousel').carousel(id);
	});

	/* // When the carousel slides, auto update the text */
	$('#myCarousel').on('slid.bs.carousel', function(e) {
		var id = $('.item.active').data('slide-number');
		$('#carousel-text').html($('#slide-content-' + id).html());
	});

});
