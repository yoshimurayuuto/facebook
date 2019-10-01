// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery/dist/jquery.js
//= require bootstrap/dist/js/bootstrap.min
//= require_tree .
$(function(){

    $('.login').click(function(){
        $('.login-modal-wrapper').show();
    });

    $('.signup').click(function(){
        $('.signup-modal-wrapper').show();
    });


})



$(function() {
  $('.index-btn').click(function() {
    $('.active').removeClass('active');
    var clickedIndex = $('.index-btn').index($(this));
    $('.slide').eq(clickedIndex).addClass('active');
  });

  $('.change-btn').click(function() {
    // 変数$displaySlideを定義してください
    var $displaySlide = $(".active");

    // 変数$displaySlideからactiveクラスを取り除いてください
    $displaySlide.removeClass("active");

    // ifとelseを用いて、$displaySlideの前もしくは次の要素に
    // activeクラスをつけてください
    if ($(this).hasClass('next-btn')) {
      $displaySlide.next().addClass('active');
    }else {
      $displaySlide.prev().addClass('active');
    }

  });
});
