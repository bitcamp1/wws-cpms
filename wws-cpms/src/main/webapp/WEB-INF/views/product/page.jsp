<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id='inventoryLnb'>
		<select>
			<option>재고현황</option>
	   		<option>입고관리</option>
	   		<option>출고관리</option>
	   		<option>기타관리</option>
   		</select>
   		

</div>


<script>
$(function(){
	
	$('#inventoryLnb').addClass('table').addClass('w100').addClass('pointer');
	$('#inventoryLnb div').addClass('table-cell').css('width','500px').addClass('pointer')
	.addClass('borderBlack').addClass('center').addClass('bgGray');
	$('#inventoryLnb div:eq(0)').click(function(e){
		var $this = $(this);
		$('#inventoryList').load('${HOME}/inv/stock/page.do');
		$('.bgYellow').removeClass('yellow');
		$this.addClass('yellow');
		e.preventDefault();
	});
	$('#inventoryLnb div:eq(1)').click(function(e){
		var $this = $(this);
		$('#inventoryList').load('${HOME}/inv/stor/page.do');
		$('.bgYellow').removeClass('yellow');
		$this.addClass('yellow');
		e.preventDefault();
	});
	$('#inventoryLnb div:eq(2)').click(function(e){
		var $this = $(this);
		$('#inventoryList').load('${HOME}/inv/unstor/page.do');
		$('.bgYellow').removeClass('yellow');
		$this.addClass('yellow');
		e.preventDefault();
	});
	$('#inventoryLnb div:eq(3)').click(function(e){
		var $this = $(this);
		$('#inventoryList').load('${HOME}/inv/rem/page.do');
		$('.bgYellow').removeClass('yellow');
		$this.addClass('yellow');
		e.preventDefault();
	});
		

});
</script>