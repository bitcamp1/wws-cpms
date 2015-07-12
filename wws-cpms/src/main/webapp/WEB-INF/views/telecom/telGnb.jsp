<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	/* #telGnb{width:100%;height:20px;color:#505050;font-size:14px;font-weight:bold;background-color: #ddd;marign-top:25px;border:1px solid gray;}
	#telGnb td{font-weigth:bold;text-align:center;height:20px; color:#505050;font-size:12px;margin-right:10px;padding:0 20px; cursor:pointer;border-right:1px solid black;} */
   	.yellow{background-color:yellow;}	
   	#tbl140514 tr td{border:1px solid black;}	
</style>
<!-- <select id='telGnb'>   
		<option style='width:25%' id='tel_all'>전체보기</option>    
		<option style='width:25%' id='tel_sk'>SKT</option>  
		<option style='width:25%' id='tel_kt'>KT</option>  
		<option style='width:25%' id='tel_lg'>LGU+</option>  
		 
</select>  --> 
<div>
	<table id='tbl140514'>
		<tr>
			<td>
				<input type='button' value='설정및입고처 등록' />
			</td>
			<td>
				자기정보수정
			</td>
			<td>
				계좌별 채권/가입자현황
			</td>
			<td>
				필수 부가서비스
			</td>
			<td>
				검색및 문자전송
			</td>
			<td>
				도움말
			</td>
		</tr>
	
	</table>
</div>
<script>
	$(function(){
		var changedBtn = $('#telecomBtn');
		if(cnagedBtn="")
		$('#telKtBtn').on('click',function(){
			location.href="${HOME}/telecom/page.do";
		});
	});

	$('#tel_sk').click(function(e){
		var $this = $(this);
		$('#content').load('${HOME}/sk/page.do');
		$('.yellow').removeClass('yellow');
		$this.addClass('yellow');
		e.preventDefault();
	});
	$('#tel_kt').click(function(){
		var $this = $(this);
		$('#content').load("${HOME}/kt/page.do");;
		$('.yellow').removeClass('yellow');
		$this.addClass('yellow');
		e.preventDefault();
	});
	$('#tel_lg').click(function(){
		var $this = $(this);
		$('#content').load('${HOME}/lg/page.do');
		$('.yellow').removeClass('yellow');
		$this.addClass('yellow');
		e.preventDefault();
	});
	$('#tel_all').click(function(){
		var $this = $(this);
		$('#content').load('${HOME}/home/main.do');
		$('.yellow').removeClass('yellow');
		$this.addClass('yellow');
		e.preventDefault();
	});
</script> 	
	

