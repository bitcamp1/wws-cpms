<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style='margin:10px 0 20px 0;'>
			<span> [신용정보 검색]</span>&nbsp;&nbsp;&nbsp;
			   
	           이름 :  <input type="text" id='targetName' name="targetName"/>
	           조회번호 :  <input type="text" id='targetNum' name="targetNum"/>
	           판매점 :<span id='shopSeq2' style='font-weight: bold;font-size: 13px;font: 2px;margin:0 10px 0 10px'>${shop.shopName}</span>
	    
	            
	           <select name='telecom' id='telecom'>
		           	<option>:::통신사:::</option>
		           	<option value='skt'>SKT</option>
		           	<option value='kt'>KT</option>
		           	<option value='lgu'>LGU</option>
		           	<option value="other">기타</option>
	           </select>
	            <input type="button" value="신용조회 " id='retrieverBtn'/>
		</div>
		
		<script>
		
		$(function(){
			$('#retrieverBtn').click(function(){
				$.ajax({
					url:'${HOME}/creditRetriever/write.do?id='+id,
					type:'POST',
					data:{
						targetName : $('#targetName').val(),
						targetNum : $('#targetNum').val(),
						shopSeq : $('#shopSeq').val(),
						telecom : $('#telecom').val()
					},
					dataType:'json',
					success:function(data){
						if(data.status == 'success'){
							$credList.trigger('reloadGrid');
						}else{
							window.alert('Ajax 에 FAIL값이 넘어왔습니다. 검토바랍니다.');
						}
					},
					error:function(e){
						
					}
				});
		 	});
		});
		</script>