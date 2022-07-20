$(document).ready(function(){

    $("input,textarea").each(function(){
        var placeholder = $(this).data("placeholder");
        $(this).attr("placeholder", placeholder);
    });

    $("input,textarea").on("focus", function(){
        $(this).attr("placeholder", "");
    });

    $("input,textarea").on("blur", function(){
        var placeholder = $(this).data("placeholder");
        $(this).attr("placeholder", placeholder);
    });

    $('input, textarea').placeholder();

});

function getUrlVars(){
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}


function equalizeHeights(selector) {
    var heights = new Array();

    // Loop to get all element heights
    $(selector).each(function() {

        // Need to let sizes be whatever they want so no overflow on resize
        $(this).css('min-height', '0');
        $(this).css('max-height', 'none');
        $(this).css('height', 'auto');

        // Then add size (no units) to array
        heights.push($(this).height());
    });

    // Find max height of all elements
    var max = Math.max.apply( Math, heights );

    // Set all heights to max height
    $(selector).each(function() {
        $(this).css('height', max + 50 + 'px');
    }); 
}

function scrollToTop() {
    var verticalOffset = typeof (verticalOffset) !== 'undefined' ? verticalOffset : 0,
        element = $('body'),
        offset = element.offset(),
        offsetTop = offset.top;
    $('html, body').animate({
        scrollTop: offsetTop - 140
    }, 500, 'linear');
}

function pageLoad() {
    if ($(".preloader").length>0) {
        setTimeout(function(){ 
          $(".preloader").addClass("hidden");
          if(getUrlVars()["go"]){
            $('html,body').animate({
                scrollTop: $(getUrlVars()["go"]).offset().top-180},
            'slow');
          }

         }, 1000);
    }
}

window.onload = pageLoad;
