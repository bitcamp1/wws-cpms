<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp" %>
<%@include file="../common/top.jsp" %>
<%-- <%@include file="../telecom/telGnb.jsp" %> --%>
<%@include file="../common/gnb.jsp" %>

        	
            <div id='content'>
        
            </div>
  

       
	<script>
		//loginForm.init();
		//indexGlobal.userInfo();
		$(function(){
		$('#content').load('${HOME}/cust/page.do'); 
		//   location.href='${HOME}/cust/page.do';
		  
		});
	</script>
    <%@include file="../common/footer.jsp" %>