<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<style>
   	#lgGnb{width:100%;height:20px;color:#505050;font-size:12px;font-weight:bold;background-color: #ddd;marign-top:25px;border:1px solid gray;}
   	#lgGnb td{font-weigth:bold;text-align:center;height:20px; color:#505050;font-size:12px;margin-right:10px;padding:0 20px; cursor:pointer;border-right:1px solid black;}
   	.yellow{background-color:yellow;}				
</style>
<table id='lgGnb'>
	<tr>
		<td id="lgCrd">LGU+신용조회</td>
		<td id="lgCst">LGU+고객리스트</td>
		<td id="lgPol">LGU+정책</td>
		<td id="lgDdl">LGU+개통마감</td>
		<td id="lgDlv">LGU+배송관리</td>
    	<td id="lgInv">LGU+재고관리</td>
    	<td id="lgRct" >LGU+요금수납</td>
    	<td id="Mgr" >관리자</td>
    	<td id="b2b" >B2B관리</td>
    	</tr>
</table>
<script>
$(function(){
	$('#lgCrd').click(function(){
		
		$('#lgContent').load('${pageContext.request.contextPath}/credit/main.do');
	});
	$('#lgCst').click(function(){
		
		$('#lgContent').load('${pageContext.request.contextPath}/customer/main.do');
	});
	$('#lgPol').click(function(){
		
		$('#lgContent').load('${pageContext.request.contextPath}/policy/main.do');
	});
	$('#lgDlv').click(function(){
		$('#lgContent').load('${pageContext.request.contextPath}/delivery/main.do');
	});
	$('#lgDdl').click(function(){
		$('#lgContent').load('${pageContext.request.contextPath}/deadline/main.do');
	});
	$('#lgInv').click(function(){
		$('#lgContent').load('${pageContext.request.contextPath}/inventory/main.do');
	});
	$('#lgRct').click(function(){
		$('#lgContent').load('${pageContext.request.contextPath}/receipt/main.do');
	});
	$('#lgMgr').click(function(){
		$('#lgContent').load('${pageContext.request.contextPath}/manager/main.do');
	});
});
</script>