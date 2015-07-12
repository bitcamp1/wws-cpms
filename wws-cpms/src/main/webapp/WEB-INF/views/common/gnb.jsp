<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="includeGnbJS.jsp" %>
<script type="text/javascript">
<!--
function loadPage(text){
	$('#content').load(text);
}

//-->
</script>
<div id='gnb' style='width:1600px;'>
    <ul class='nav'>
        <li><a href='#' onclick="loadPage('${HOME}/creditRetriever/page.do');">**신용조회</a>
        	
        
        </li>
        <li><a href='#' onclick="loadPage('${HOME}/creditRetriever/page.do');">*입고관리</a>
        	
        
        </li>
        <li><a href='#'>단말기관리</a>
        	<ul id='prod'>
        		<li><a href='#' onclick="loadPage('${HOME}/prod/phone/page.do');">상품등록</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/prod/inv/page.do');">입고관리</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/prod/inv/page.do');">출고관리</a></li>
        	</ul>
        </li>
        <li><a href='#'>부가서비스</a>
        	<ul>
        		<li><a href='#' onclick="loadPage('${HOME}/policy/add.do');">정책등록</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/joinOp/page.do');">가입조건</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/policy/rebate/page.do');">리베이트</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/policy/commission/page.do');">커미션</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/policy/deduct/page.do');">추가할부</a></li>
        	</ul>
        </li>
        <li><a href='#'>개통업무</a>
        	<ul>
        		<li><a href='#' onclick="loadPage('${HOME}/dline/page.do');">개통현황</a>
        		<li><a href='#' onclick="loadPage('${HOME}/dline/page.do');">개통관리</a>
        		<li><a href='#' onclick="loadPage('${HOME}/dline/page.do');">정산마감</a>
        	</ul>
        </li>
        <li><a href='#' onclick="loadPage('${HOME}/cust/page.do');">가입자수정/검색</a>
        </li>
        <li><a href='#' onclick="loadPage('${HOME}/receipt/page.do');">요금수납</a>
        </li>
		<li><a href='#'>*입금/지출관리</a>
        	<ul>
        		<li><a href="#" onclick="loadPage('${HOME}/shop/page.do');">본사관리</a></li>
        		<li><a href="#" onclick="loadPage('${HOME}/shop/subShop/page.do');">지점관리</a></li>
        		<li><a href="#" onclick="loadPage('${HOME}/shop//emp/page.do');">사원관리</a></li>
        	</ul>
        </li>
         <li><a href='#' onclick="loadPage('${HOME}/deli/page.do');">*장부현황검색</a></li>
          <li><a href='#' onclick="loadPage('${HOME}/deli/page.do');">*미결업무</a></li>
        <li><a href='#' onclick="loadPage('${HOME}/deli/page.do');">**배송관리</a></li>
        
        
        
    </ul>
</div>
<script>
$(function(){

		$('.nav').droppy({trigger: 'hover'});	
	  
	  
});

</script>