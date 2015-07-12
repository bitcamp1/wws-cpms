<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table id='gnb'>
	<tr>
		<td>신용조회</td> 
		<td>고객리스트</td>
		<td>정책관리</td>
		<td>개통마감</td>
		<td>배송관리</td>
    	<td>상품관리</td>
    	<td>요금수납</td>
    	<td>매장관리</td>
    	<td>B2B관리</td>
    </tr>
</table>
<script>
  $(function(){
	
	  $('#gnb').addClass('gnb');
	  $('#gnb td:eq(0)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/cred/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
	  $('#gnb td:eq(1)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/cust/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
	  $('#gnb td:eq(2)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/policy/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
	  $('#gnb td:eq(3)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/dline/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
	  $('#gnb td:eq(4)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/deli/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
	  $('#gnb td:eq(5)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/prod/inv/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
	  $('#gnb td:eq(6)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/rcpt/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
	  $('#gnb td:eq(7)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/manager/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
	  $('#gnb td:eq(8)').on('click',function(e){
		  var $this = $(this);
		  $('#content').load('${HOME}/b2b/page.do');
			$('.yellow').removeClass('yellow');
			$this.addClass('yellow');
			e.preventDefault();
	  });
  });
</script>