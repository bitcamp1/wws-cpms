<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<style>
   	.gnb{width:100%;height:20px;color:#505050;font-size:12px;font-weight:bold;background-color: #ddd;marign-top:25px;border:1px solid gray;}
   	.gnb td{font-weigth:bold;text-align:center;height:20px; color:#505050;font-size:12px;margin-right:10px;padding:0 20px; cursor:pointer;border-right:1px solid black;}
   	.yellow{background-color:yellow;}				
</style>
<table id='gnb'>
	<tr>
		<td id="allCrd">전체 신용조회</td>
		<td id="allCst">전체 고객리스트</td>
		<td id="allPol">전체 정책</td>
		<td id="allDdl">전체 개통마감</td>
		<td id="allDlv">전체 배송관리</td>
    	<td id="allInv">전체 재고관리</td>
    	<td id="allRct" >전체 요금수납</td>
    	<td id="mgr" >관리자</td>
    	<td id="b2b" >B2B관리</td>
    	</tr>
</table>
<script>
$(function(){
	$('#gnb').addClass("gnb");
	$('#allCrd').click(function(){
		
		$('#allContent').load('${pageContext.request.contextPath}/credit/main.do');
	});
	$('#allCst').click(function(){
		
		$('#allContent').load('${pageContext.request.contextPath}/customer/main.do');
	});
	$('#allPol').click(function(){
		
		$('#allContent').load('${pageContext.request.contextPath}/policy/main.do');
	});
	$('#allDlv').click(function(){
		$('#allContent').load('${pageContext.request.contextPath}/delivery/main.do');
	});
	$('#allDdl').click(function(){
		$('#allContent').load('${pageContext.request.contextPath}/deadline/main.do');
	});
	$('#allInv').click(function(){
		$('#allContent').load('${pageContext.request.contextPath}/inventory/main.do');
	});
	$('#allRct').click(function(){
		$('#allContent').load('${pageContext.request.contextPath}/receipt/main.do');
	});
	$('#allMgr').click(function(){
		$('#allContent').load('${pageContext.request.contextPath}/manager/main.do');
	});
});
</script>