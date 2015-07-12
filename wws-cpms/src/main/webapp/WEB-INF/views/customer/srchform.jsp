<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id='customerSrchform'>
		<div height="26">
			<span class='blueFont' >  검색 | 신규등록</span>
			    <select name="sitem">
		            <option value="1">고객명</option>
	            </select>
            <input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {document.schFrm.submit();}">
            <input type="button" id='' class="cshand button06"  value=" 검 색 " >
            <input type="button" id='' class='pointer buttion06 fancybox'  value=" 신규등록 " >
		</div>
</div>
<script>
$(function(){
	$('#customerSrchform').addClass('anySrchform');
	$('#customerSrchform span:eq(0)').addClass('blueFont');
	$('#customerSrchform input:eq(0)').css('size','25').addClass('input_text');
	$('#customerSrchform input:eq(0)').on('onkeydown',function(){
		if (event.keyCode == 13) {document.schFrm.submit();}
	});
	$('#customerSrchform input:eq(1)').addClass('pointer button06');
	$('#customerSrchform input:eq(2)').addClass('pointer button06');
	$('#customerSrchform input:eq(2)').fancybox({
		helpers :{overlay:{locked : false}},
		href : '${HOME}/cust/add.do',
		'scrolling'		: 'no',
		'titleShow'		: false,
		'width'			: 1200,
		'height'		: 700,
		'autoSize'		: false,
		'transitionIn'	: 'elastic',
		'transitionOut'	: 'elastic',
		'overlayShow'	: false,
		'type'          :'iframe'
	});
});
</script>
