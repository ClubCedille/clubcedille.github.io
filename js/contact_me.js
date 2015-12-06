---
---
$(function() {

	$('#contact .form-selector').on('click', 'a', function(){
		var t = $(this).data('target');
		$('#contact-form, #adhesion-form').not(t).addClass('hidden');
		$(t).removeClass('hidden');

		$('#contact .form-selector .active').removeClass('active');
		$(this).addClass('active');
	})

	$('body').on('submit', '#contact-form,#adhesion-form', function(e){
		e.preventDefault();
		var data = {};
		
		$(this).serializeArray().map(function(x){
			// warning: doesn't handle multiple checked or selected options.
			// source: http://stackoverflow.com/questions/2591354/jquery-form-serialize-empty-string
			data[x.name] = x.value;
		});

		$.post($(this).attr('action'), data, function response(d){
			console.log(d);
		}, 'text/json');

	});
});