var inputTextClear = {
		loaded : false
};

inputTextClear.init =  function () {
	
	var browser = (function() {
		  var s = navigator.userAgent.toLowerCase();
		  var match = /(webkit)[ \/](\w.]+)/.exec(s) ||
		              /(opera)(?:.*version)?[ \/](\w.]+)/.exec(s) ||
		              /(msie) ([\w.]+)/.exec(s) ||               
		              /(mozilla)(?:.*? rv:([\w.]+))?/.exec(s) ||
		             [];
		  return { name: match[1] || "", version: match[2] || "0" };
		}());
	if(browser.name=='msie'){// IE 인 경우 JS 기능 구현 
			$value.replaceWith($0.clone(true));
		} else { // IE 가 아닌 경우 JS 기능 구현 
			 $value.val(""); 
		}
	
	
};

