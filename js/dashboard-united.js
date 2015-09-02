//фильтрация покпателей
function new_u() {
    alert(777);
    $( "#main_list" ).replaceWith('2222');
}

//фильтрация покпателей
function FilterSomething($msg) {
    alert($msg);
}

document.getElementById("888").style.color = "red";

$(document).ready(function() {
    // complete search field markup
    $('.search')
        .after('<div class="indicator"></div>')
        .after('<div class="separator"></div>')
        .after('<canvas class="icon" width="26" height="26"></canvas>');

    // draw search icon
    var ctx = $('.icon')[0].getContext("2d");
    ctx.lineWidth = 4;
    ctx.strokeStyle = '#4e4e4e';
    ctx.lineCap = 'round';
    ctx.beginPath();
    ctx.arc(9, 9, 7, 0, Math.PI*2, true);
    ctx.closePath();
    ctx.stroke();
    ctx.moveTo(16, 16);
    ctx.lineTo(21, 21);
    ctx.stroke();

});