<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<select id='policyLnb'>   
		<option >SKT리베이트</option>     
		<option >판매처 위탁수수료</option>    
		<option >추가차감현황</option>
</select>      
     <div id='policyList'>
     	<%@ include file='rebate/list.jsp' %>
     </div>
<script>
	$(function(){
		$('#policyLnb').addClass('anyGnb');
		$('#policyLnb td:eq(0)').click(function(e){
			var $this = $(this);
			$('#policyList').load('${HOME}/rebate/list.do');
			$('.yellow').removeClass('yellow'); 
			$this.addClass('yellow');
			e.preventDefault();
		});
		$('#policyLnb td:eq(1)').click(function(e){
			var $this = $(this);
			$('#policyList').load('${HOME}/commission/list.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
		});
		$('#policyLnb td:eq(2)').click(function(e){
			var $this = $(this);
			$('#policyList').load('${HOME}/deduction/list.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
		});
	});
</script>