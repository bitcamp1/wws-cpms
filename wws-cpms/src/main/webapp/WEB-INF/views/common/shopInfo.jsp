<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%-- ${user}가  아이디 입니다. --%>

 <span id='shopName'></span>
<script>
window.onload = function getUserInfo(){
	var shopSeq = ${user};
	$.ajax({
		url:'${HOME}/shop/info.do?id='+shopSeq,
		dataType:'json',
		type:'GET',
		success:function(data){
			console.log(data);
		$('#shopName').append(data.shopName);
	},
	error:function(e){
		alert('shopInfo.jsp 에서 에러발생');
	}
	});
};
</script>



