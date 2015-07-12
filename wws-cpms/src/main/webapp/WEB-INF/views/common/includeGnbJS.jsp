<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
    
<STYLE type="text/css">

  #gnb { width: 100%; margin: 0 auto; padding: 10px 0;}
	.nav li{width:125px;text-align: center;}
  /* Basic code - don't modify */
 
 .droppy { display: block; margin: 0; padding: 0; position: relative; }
  .droppy li { display: block; list-style: none; margin: 0; padding: 0; float: left; position: relative; }
  .droppy a { display: block; }
  .droppy ul { display: none; position: absolute; left: 0; margin: 0; padding: 0; }
  * html .droppy ul { line-height: 0; } /* IE6 "fix" */
  	.droppy ul a { zoom: 1; } /* IE6/7 fix */
    .droppy ul li { float: none; }
    .droppy ul ul { top: 0; }
    
/* Essentials - configure this */

.droppy ul { width: 130px; }
.droppy ul ul { left: 131px; }

/* Everything else is theming */
 
.droppy { background-color: #30A8C3; height: 24px; }
.droppy *:hover { background-color: none; }
.droppy a { border-right: 1px solid white; color: white; font-size: 12px; padding: 6px; line-height: 1; }
  .droppy li.hover a { background-color: #5E5A5A; }
  .droppy ul { top: 25px; }
    .droppy ul li a { background-color: #5E5A5A; }
      .droppy ul a.has-subnav { background-color: #2E2A2A }
			.droppy ul a.hover { background-color: #30A8C3; }
   .droppy ul a { border-bottom: 1px solid white; border-right: none; opacity: 0.9; filter: alpha(opacity=90); }
/* .droppy ul a { border-bottom: none; } - I also needed this for IE6/7 */


  </STYLE>
<SCRIPT>
  <!--
	/*
 * Droppy 0.1.2
 * (c) 2008 Jason Frame (jason@onehackoranother.com)
 */
(function($) {
  
  $.fn.droppy = function(options) {

    options = $.extend({speed: 250, className: 'droppy', trigger: 'hover'}, options || {});

    this.each(function() {

      var root = this, zIndex = 1000;

      $(root).addClass(options.className);
			$(root).find('li:has(> ul) > a').addClass('has-subnav');

      function getSubnav(ele) {
        if (ele.nodeName.toLowerCase() == 'li') {
          var subnav = $('> ul', ele);
          return subnav.length ? subnav[0] : null;
        } else {
          return ele;
        }
      };

      function getActuator(ele) {
        if (ele.nodeName.toLowerCase() == 'ul') {
          return $(ele).parents('li')[0];
        } else {
          return ele;
        }
      };

      function hide() {
        var subnav = getSubnav(this);
        if (!subnav) return;
        $.data(subnav, 'cancelHide', false);
        setTimeout(function() {
          if (!$.data(subnav, 'cancelHide')) {
            $(subnav).slideUp(options.speed);
          }
        }, 500);
      };

      function show() {
        var subnav = getSubnav(this);
        if (!subnav) return;
        $.data(subnav, 'cancelHide', true);
        $(subnav).css({zIndex: zIndex++}).slideDown(options.speed);
        if (this.nodeName.toLowerCase() == 'ul') {
          var li = getActuator(this);
          $(li).addClass('hover');
          $('> a', li).addClass('hover');
        }
        return false;
      };
      
      if (options.trigger == 'click') {
        $('> li', this).click(show);
        $('> li ul, > li li', this).hover(show, function() {});
        $('ul, li', this).hover(function() {}, hide);
      } else {
        if (typeof $.fn.hoverIntent == 'function') {
          $('ul, li', this).hoverIntent($.extend({
            sensitivity: 2, interval: 50, timeout: 100
          }, options.hoverIntent || {}, {over: show, out: hide}));
        } else {
          $('ul, li', this).hover(show, hide);
        }
      }
      
      $('li', this).hover(
        function() { $(this).addClass('hover'); $('> a', this).addClass('hover'); },
        function() { $(this).removeClass('hover'); $('> a', this).removeClass('hover'); }
      );

    });

  };

})(jQuery);

  //-->
  </SCRIPT>