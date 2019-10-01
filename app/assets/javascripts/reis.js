$(function() {
  // 「#language-wrapper」にhoverしたときのhoverイベントを作成してください
  $("#language-wrapper").hover(
      function() {
        $(".language-text").fadeIn();
      },
      function() {
        $(".language-text").fadeOut();
      });


$('.faq-list-item').click(function(){
        var $answer = $(this).find('.answer');
//        console.log('push number :' + questionIndex);
        console.log($answer);
        if ($answer.hasClass('open')){
            $answer.removeClass('open');
            $answer.slideUp("slow");
            $(this).find('span').text('+');
        } else {
            $answer.addClass('open');
            $answer.slideDown("slow");
            $(this).find('span').text('-');
            console.log($answer);
        }
    })
  });
