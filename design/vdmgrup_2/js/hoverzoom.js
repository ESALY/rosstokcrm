(function($) {
    var methods = {
        init: function(options) {
            var settings = $.extend({
                'largeImg': ''
            }, options);

            return this.each(function() {
                var $container = $(this);
                var $div = $('<div />');

                var $origImg = $('.js-orig-img');
                var $largeImg = $('.js-large-img');
                var $largeImgInner = $largeImg.find('.js-large-img-inner');
                var $origOffset = $origImg.offset();
                
                $largeImg.after($div.addClass('js-cursor-zoom-box'));

                var $zoomBox = $('.js-cursor-zoom-box');

                var hovered = false;

                $origImg.mouseenter(function() {
                    //$('.js-orig-img').css('background-color', '#000');
                    hovered = true;
                    $zoomBox.fadeIn();
                    $largeImg.fadeIn();
                });

                $zoomBox.mouseleave(function() {
                    hovered = false;
                    $zoomBox.fadeOut();
                    $('.js-cursor-orig-overlay').remove();
                    $largeImg.fadeOut();
                });
                
                $('.js-orig-img').mouseenter(function() {
                    var $overlay = $('<div />').addClass('js-cursor-orig-overlay');
                    $(this).prepend($overlay);
                }).mouseleave(function() {
                });

                $(document).bind('mousemove', function(e) {
                    if (!hovered) {
                        return;
                    }
                    var relX = e.pageX - $origOffset.left; // x coordinate relative to .js-orig-img
                    var relY = e.pageY - $origOffset.top; // y coordinate relative to .js-orig-img
                    
                    $largeImgInner.css({
                        left: $zoomBox.position().left - $zoomBox.position().left * 2,
                        top: $zoomBox.position().top - $zoomBox.position().top * 2
                    });

                    $zoomBox.css({
                        left: Math.min(Math.max(relX - 50, 0), $origImg.width() - $zoomBox.width()),
                        top: Math.min(Math.max(relY  - 50, 0), $origImg.height() - $zoomBox.height())
                    });
                });
            });
        }
    };

    $.fn.hoverZoom = function(method) {
        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || !method) {
            return methods.init.apply(this, arguments);
        } else {
            return false;
        }
    };
})(jQuery);

$(function() {
    $('.js-hover-zoom').hoverZoom();
});