$(function(){
	var datepicker = $('#datepicker1,#datepicker2,#datepicker3').datepicker({
		 format: 'yyyy-mm-dd'
	}).on('changeDate', function(ev) {
			datepicker.hide();
			
		}).data('datepicker');
});		
		
	
		
	
	    
		
	