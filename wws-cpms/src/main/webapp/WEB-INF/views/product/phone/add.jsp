<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
			
			<span> [단말기 등록]</span>&nbsp;&nbsp;&nbsp;
			   
	        	단말기명 : <input type="text" id='phoneName' name="phoneName"/>  
	           	브랜드 :  <input type="text" id='phoneBrand' name="phoneBrand"/>
	           	모델 :  <input type="text" id='phoneModel' name="phoneModel"/>
	          	출고가 : <input type="text" id='phonePrice' name="phonePrice"/>
	          	통신사 :
	          	<select name='telecom' id='telecom'>
				<option value='skt' selected>SKT</option>
				<option value='kt'>KT</option>
				<option value='lgu'>LGU+</option>
			
			</select>
	          	<input type="button" value="조회 " id='addPhoneBtn'/>
	          	<br/>
	          	<span> [색상 등록]</span>&nbsp;&nbsp;&nbsp;
	          	색상 : <input type="text" id='phoneColor' name="phoneColor"/>
	          	색상코드 : <input type="text" id='phoneColorCode' name="phoneColorCode"/>
	          	<input type="button" value="조회 " id='addPhoneColorBtn'/>
		</div>
		<!-- <div>
	          	
	        <span> [단말기 조회]</span>&nbsp;&nbsp;&nbsp;
			<select name='retrievePhone'>
				<option value='phoneName' selected>단말기명</option>
				<option value='phoneBrand'>브랜드</option>
				<option value='phoneModel'>모델</option>
			
			</select>
	          	<input type="button" value="조회 " id='retrievePhoneBtn'/>
		</div> -->
		<script>
		$(function(){
			$('#addPhoneBtn').on('click',function(){
				$.ajax({
					url:'${HOME}/prod/addPhone.do',
					type:'POST',
					dataType:'json',
					data:{
						phoneName : $('#phoneName').val(),
						phoneBrand : $('#phoneBrand').val(),
						phoneModel : $('#phoneModel').val(),
						phonePrice : $('#phonePrice').val(),
						telecom : $('#telecom').val(),
						shopSeq : shopSeq
						
						
					},
					success:function(data){
						alert('폰이 등록되었습니다.');
						location.href = '${HOME}/prod/phone/page.do';
					},
					error:function(e){
						alert('폰등록 실패입니다.');
					}
					
					
				});
				
			});
			$('#addPhoneColorBtn').on('click',function(){
				$.ajax({
					url:'${HOME}/prod/addPhoneColor.do',
					type:'POST',
					dataType:'json',
					data:{
						phoneColor : $('#phoneColor').val(),
						phoneColorCode : $('#phoneColorCode').val()
						
					},
					success:function(data){
						alert('색상이 등록되었습니다.');
						location.href = data.redirect;
					},
					error:function(e){
						alert('폰등록 실패입니다.');
					}
					
					
				});
				
			});
		});
		</script>