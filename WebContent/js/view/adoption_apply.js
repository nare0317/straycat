$(function() {
      $('#textarea').keyup(function (e){
          var content = $(this).val();
          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
          $('#counter').html(content.length + '/300');
      });
      $('#textarea').keyup();
});