<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	.pdt3{width:100%;height:30px;}
	.pdt3 span{width:200px;font-size: 12px; font-weight: bold;margin:0 50px 0 0;}
	.redFont{color:red; font-size: 12px;font-weight: bold;}
</style>   
<%-- <div>
	<a href="?prgid=C110s&amp;ck=&amp;mode=" onmouseover="rollupchangeleft('over','01','C110s','C110s');" onmouseout="rollupchangeleft('out','01','C110s','C110s');"><img src="<c:url value='/resources/img/common/skt_orange.gif'/>" alt="SKT" id="lmnn_01"></a>
	<a href="?prgid=C110k&amp;ck=&amp;mode=" onmouseover="rollupchangeleft('over','02','C110k','C110s');" onmouseout="rollupchangeleft('out','02','C110k','C110s');"><img src="<c:url value='/resources/img/common/kt_white.gif'/>"  alt="KT" id="lmnn_02"></a>
	<a href="?prgid=C110l&amp;ck=&amp;mode=" onmouseover="rollupchangeleft('over','03','C110l','C110s');" onmouseout="rollupchangeleft('out','03','C110l','C110s');"><img src="<c:url value='/resources/img/common/lgu_white.gif'/>" alt="LGU" id="lmnn_03"></a>
</div> --%>


<div class="pdt3">
    <%-- <span id="skLogo" class='hidden'><img src="<c:url value='/resources/img/common/skt_orange.gif'/>"></span>
    <span id="ktLogo" class="hidden"><img src="<c:url value='/resources/img/common/kt_white.gif'/>" ></span>
    <span id="lgLogo" class="hidden"><img src="<c:url value='/resources/img/common/lgu_white.gif'/>" ></span> --%>
    <span class='redFont'>[통신사]선택</span>&nbsp;&nbsp;&nbsp;&nbsp;
    <span id="skLogo" >SKT</span>
    <span id="ktLogo">KT</span>
    <span id="lgLogo">LGU</span>
</div>