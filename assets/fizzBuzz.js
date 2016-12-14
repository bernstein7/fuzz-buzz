var fetchResult = function(number) {
  $.post('/get_result', { number: number })
    .done(function(resp) {
      $('#outputPanel').text(number + ' is ' + resp.result);
    })
    .fail(function(resp) {
      alert( "error" );
    })
};

$(document).ready(function() {
  $('#numberInput').keyup(function(e) {
    var number = + this.value;
    if (number) {
      $('.next-btn').removeAttr('disabled')
    } else {
      $('.next-btn').attr('disabled', true)
    }
  })

  $('.next-btn').click(function(e){
    if (! $(this).attr('disabled')) {
      var number = $('#numberInput').val();
      if (number) {
        $('#numberInput').val(+ number + 1);
        fetchResult(number);
      }
      $(this).text('Next!');
    }
  })
});