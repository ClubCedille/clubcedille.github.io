---
---
$(function() {

   $('#contact .form-selector').on('click', 'a', function(){
       $('#contact .google-form').addClass('hidden');
       $('#contact').find($(this).data('target')).removeClass('hidden');
       
       $('#contact .form-selector a').removeClass('active');
       $(this).addClass('active');
   }) 
});