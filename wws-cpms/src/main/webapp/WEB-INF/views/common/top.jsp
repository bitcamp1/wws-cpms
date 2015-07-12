<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.topTable{width:100%;}
</style>

<table>
	<tr height="30">
		<td>
			<table class='topTable'>
				<tr>
					<td>
						<%@ include file='../telecom/telGnb.jsp' %>
					</td>
					<td>
						<a href='http://www.imemi.co.kr/calculation/index.html' target='_blank'>
							<span style='font-weight:bold;color:#ff6600'>　　할부이자계산기</span>
						</a>&nbsp;&nbsp;
					</td>
					<td align="left" width="300px">
						<img src="http://smtech.kradmin.co.kr/images/top_left/smile_icn.gif" style="margin-right:5px;"/>
						
						반갑습니다. ${shop.shopName} 에서 로그인하셨습니다.
						<br>
						<img src="http://smtech.kradmin.co.kr/images/top_left/time_icn.gif" align="absmiddle" style="margin-right:10px;">
						<span class="date" id="clockView" style="color:#000000;"></span>
					</td>
					<td align="center" width="200">
						<img src="http://smtech.kradmin.co.kr/images/top_left/btn_logout.gif" 
							id='logoutBtn' class="cshand" alt="로그아웃버튼" style="margin-right:10px; cursor:pointer" >
						<img src="http://smtech.kradmin.co.kr/images/top_left/btn_infomodify.gif" style="cursor:pointer"
							id='shopInfoBtn' class="cshand" alt="정보수정버튼">
					</td>
					
				</tr>
			</table>
		</td>
	</tr>
</table>
<script>
var shopSeq = ${shop.shopSeq};
	$(function(){
		$('#logoutBtn').click(function(){
			$.getJSON(
				'${HOME}/shop/logout.do',
				function(data){
					if(data.status=='success') location.href='${HOME}/login.do';
					else window.alert('로그아웃 실패');
				}
			);
		});
		$('#shopInfoBtn').fancybox({
			helpers :{overlay:{locked : false}},
			href : '${HOME}/shop/detail.do?id='+shopSeq,
			'scrolling'		: 'no',
			'titleShow'		: false,
			'width'			: 600,
			'height'		: 500,
			'autoSize'		: false,
			'transitionIn'	: 'elastic',
			'transitionOut'	: 'elastic',
			'overlayShow'	: false,
			'type'          :'iframe'
		});
	});
	
</script>