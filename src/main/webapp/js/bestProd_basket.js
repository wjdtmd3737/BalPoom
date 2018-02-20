var curPosition=1;
$(document).ready(function(){
  $('#left').click(function(){
    if(curPosition == 1){
    fnMove(4);
  }else if(curPosition == 2){
    fnMove(1);
  }else if(curPosition == 3){
    fnMove(2);
  }else if(curPosition == 4){
    fnMove(3);
  }
  });
  $('#right').click(function(){
    if(curPosition == 1){
    fnMove(2);
  }else if(curPosition == 2){
    fnMove(3);
  }else if(curPosition == 3){
    fnMove(4);
  }else if(curPosition == 4){
    fnMove(1);
  }
  });
});

function fnMove(seq){
  if(seq==1){
    position = 0;
    $('#btn_move1').css('background','#6f6f6f');
    $('#btn_move2').css('background','#f9f9f9');
    $('#btn_move3').css('background','#f9f9f9');
    $('#btn_move4').css('background','#f9f9f9');
    curPosition = 1;
  }else if(seq==2){
    position = 1406;
    $('#btn_move1').css('background','#f9f9f9');
    $('#btn_move2').css('background','#6f6f6f');
    $('#btn_move3').css('background','#f9f9f9');
    $('#btn_move4').css('background','#f9f9f9');
    curPosition = 2;
  }else if(seq==3){
    position = 2811;
    $('#btn_move1').css('background','#f9f9f9');
    $('#btn_move2').css('background','#f9f9f9');
    $('#btn_move3').css('background','#6f6f6f');
    $('#btn_move4').css('background','#f9f9f9');
    curPosition = 3;
  }else if(seq==4){
    position = 4216;
    $('#btn_move1').css('background','#f9f9f9');
    $('#btn_move2').css('background','#f9f9f9');
    $('#btn_move3').css('background','#f9f9f9');
    $('#btn_move4').css('background','#6f6f6f');
    curPosition = 4;
  }
   $('#second').animate({scrollLeft : position}, 400);
}
