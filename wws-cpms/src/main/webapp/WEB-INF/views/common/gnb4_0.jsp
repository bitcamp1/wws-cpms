<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="includeGnbJS.jsp" %>
<script type="text/javascript">
<!--
$(document).ready(function(){
	function loadPage(text){
		$('#content').load(text);
	}
});


//-->
</script>
<div id='gnb' style='width:1600px;'>
    <ul class='nav'>
        <li><a href='#' id="cred">신용조회</a>
        	
        
        </li>
        <li><a href='#' onclick="loadPage('${HOME}/cust/page.do');">고객리스트</a></li>
        <li><a href='#' onclick="loadPage('${HOME}/deli/page.do');">배송관리</a></li>
        <li><a href='#'>정책관리</a>
        	<ul>
        		<li><a href='#' onclick="loadPage('${HOME}/policy/rebate/page.do');">리베이트</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/policy/commission/page.do');">커미션</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/policy/deduct/page.do');">추가할부</a></li>
        	</ul>
        </li>
        <li><a href='#' onclick="loadPage('${HOME}/dline/page.do');">개통마감</a></li>
        <li><a href='#'>상품관리</a>
        	<ul id='prod'>
        		<li><a href='#' onclick="loadPage('${HOME}/prod/inv/page.do');">재고현황</a></li>
        		<li><a href='#' onclick="loadPage('${HOME}/prod/phone/page.do');">휴대폰현황</a></li>
        	</ul>
        </li>
        <li><a href='#' onclick="loadPage('${HOME}/receipt/page.do');">요금수납</a></li>
        <li><a href='#'>매장관리</a>
        	<ul>
        		<li><a href="#" onclick="loadPage('${HOME}/shop/page.do');">본사관리</a></li>
        		<li><a href="#" onclick="loadPage('${HOME}/shop/subShop/page.do');">지점관리</a></li>
        		<li><a href="#" onclick="loadPage('${HOME}/shop//emp/page.do');">사원관리</a></li>
        	</ul>
        </li>
        <li><a href='#' onclick="loadPage('${HOME}/b2b/page.do');">B2B사이트관리</a></li>
    </ul>
</div>
<script>
$(function(){

		$('.nav').droppy({trigger: 'hover'});	
		$('#cred').click(function(e){
			$('#content').load('${HOME}/creditRetriever/page.do');
			e.preventDefault();
		});
	  
	  
});

</script>