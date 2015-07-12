<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<style>
   	#ktGnb{width:100%;height:20px;color:#505050;font-size:12px;font-weight:bold;background-color: #ddd;marign-top:25px;border:1px solid gray;}
   	#ktGnb td{font-weigth:bold;text-align:center;height:20px; color:#505050;font-size:12px;margin-right:10px;padding:0 20px; cursor:pointer;border-right:1px solid black;}
   	.yellow{background-color:yellow;}				
</style>
<table id='ktGnb'>
	<tr>
		<td id="ktCrd">KT신용조회</td>
		<td id="ktCst">KT고객리스트</td>
		<td id="ktPol">KT정책</td>
		<td id="ktDdl">KT개통마감</td>
		<td id="ktDlv">KT배송관리</td>
    	<td id="ktInv">KT재고관리</td>
    	<td id="ktRct" >KT요금수납</td>
    	<td id="mgr" >관리자</td>
    	<td id="b2b" >B2B관리</td>
    	</tr>
</table>
<script>
$(function(){
	$('#ktCrd').click(function(){
		
		$('#ktContent').load('${pageContext.request.contextPath}/credit/main.do');
	});
	$('#ktCst').click(function(){
		
		$('#ktContent').load('${pageContext.request.contextPath}/customer/main.do');
	});
	$('#ktPol').click(function(){
		
		$('#ktContent').load('${pageContext.request.contextPath}/policy/main.do');
	});
	$('#ktDlv').click(function(){
		$('#ktContent').load('${pageContext.request.contextPath}/delivery/main.do');
	});
	$('#ktDdl').click(function(){
		$('#ktContent').load('${pageContext.request.contextPath}/deadline/main.do');
	});
	$('#ktInv').click(function(){
		$('#ktContent').load('${pageContext.request.contextPath}/inventory/main.do');
	});
	$('#ktRct').click(function(){
		$('#ktContent').load('${pageContext.request.contextPath}/receipt/main.do');
	});
	$('#ktMgr').click(function(){
		$('#ktContent').load('${pageContext.request.contextPath}/manager/main.do');
	});
});
</script>