<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<style>
   	#gnb{width:100%;height:20px;color:#505050;font-size:14px;font-weight:bold;background-color: #ddd;marign-top:25px;border:1px solid gray;}
   	#gnb ul{list-style:none;margin:0;padding:0;}
   	#gnb ul li{float:left;font-weigth:bold; color:#505050;font-size:12px;margin-right:10px;padding:0 20px; cursor:pointer;}
   	.yellow{background-color:yellow;}				
</style>
   
<div id='gnb'>
    <ul>
        <li id="credit">신용조회</li>
        <li id="customer">고객리스트</li>
        <li id="delivery">배송관리</li>
        <li id="policy" >정책</li>
        <li id="closure" >개통마감</li>
        <li id="inventory" >재고관리</li>
        <li id="receipt" >요금수납</li>
        <li id="management" >관리자</li>
        <li id="b2b" style='float:right;color:red;'>B2B사이트관리</li>
    </ul>
</div>
<script>
$(function(){
	$('#credit').click(function(){location.href='${pageContext.request.contextPath}/credit/main.do';$('#credit').addClass('yellow');});
	$('#customer').click(function(){location.href='${pageContext.request.contextPath}/customer/main.do';$('#customer').addClass('yellow');});
	$('#delivery').click(function(){location.href='${pageContext.request.contextPath}/delivery/main.do';$('#delivery').addClass('yellow');});
	$('#policy').click(function(){location.href='${pageContext.request.contextPath}/policy/main.do';$('#policy').addClass('yellow');});
	$('#closure').click(function(){location.href='${pageContext.request.contextPath}/deadline/main.do';$('#closure').addClass('yellow');});
	$('#inventory').click(function(){location.href='${pageContext.request.contextPath}/inventory/main.do';$('#inventory').addClass('yellow');});
	$('#receipt').click(function(){location.href='${pageContext.request.contextPath}/receipt/main.do';$('#receipt').addClass('yellow');});
	$('#management').click(function(){location.href='${pageContext.request.contextPath}/manager/main.do';$('#management').addClass('yellow');});
	
		
	
	
	
});

</script>