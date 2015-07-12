<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table id='pol_tbl'>
	<tr>
		<td>
			통신사 선택
			</td>
			<td>
			<select name='tel' id='tel' style='width:150px;'>
				<option value='skt' selected>SKT</option>
				<option value='kt'>KT</option>
				<option value='lgu'>LGU+</option>
			</select>
		
		</td>
		
		<td rowspan=11 >
			<table id='tariffTbl' >
			
			</table>
		</td>
	</tr>
	<tr>
		<td class='joinOpTitle'>
			요금제 </td>
			<td> <input type='text' class='pol_tbl_val'/>
			<input type='button' value='추가' class='pol_tbl_add'/> 
			<input type='button' value='조회' id='pol_tbl_srch_tariff'/> 
		</td>
	</tr>
	<tr>

		<td class='joinOpTitle'>
			인증방법</td><td> 
			<input type='text' class='pol_tbl_val'/>
			<input type='button' value='추가' class='pol_tbl_add'/>
			<input type='button' value='조회' id='pol_tbl_srch_authMethod'/> 
			
			
		</td>
		
	</tr>
	<tr>
		<td class='joinOpTitle'>
			가입유형 </td><td> 
			<input type='text' class='pol_tbl_val'/>
			<input type='button' value='추가' class='pol_tbl_add'/> 
			<input type='button' value='조회' id='pol_tbl_srch_joinType'/> 
		</td>
	</tr>
	<tr>
		<td class='joinOpTitle'>
			할부개월 </td><td> 
			<input type='text' class='pol_tbl_val'/>
			<input type='button' value='추가' class='pol_tbl_add'/> 
			<input type='button' value='조회' id='pol_tbl_srch_halbuWol'/> 
		</td>
	</tr>
	<tr>
		<td class='joinOpTitle'>
			약정사항 </td><td> <input type='text'class='pol_tbl_val'/>
			<input type='button' value='추가' class='pol_tbl_add'/>
			<input type='button' value='조회' id='pol_tbl_srch_yakjung'/> 
		</td>
	</tr>
	
	<tr>
		<td class='joinOpTitle'>
			보상등급 </td><td> 
			<input type='text'class='pol_tbl_val'/>
			
			<input type='button' value='추가' class='pol_tbl_add'/> 
			<input type='button' value='조회' id='pol_tbl_srch_bosang'/> 
		</td>
	</tr>
	<tr>
		<td class='joinOpTitle'>
			할인유형 </td><td> 
			<input type='text' class='pol_tbl_val'/>
			<input type='button' value='추가' class='pol_tbl_add'/> 
			<input type='button' value='조회' id='pol_tbl_srch_halinType'/> 
		</td>
	</tr>
	<tr>
		<td class='joinOpTitle'>
			가입비 </td><td> <input type='text' class='pol_tbl_val'/>
			<input type='button' value='추가' class='pol_tbl_add'/> 
			<input type='button' value='조회' id='pol_tbl_srch_joinFee'/> 
		</td>
	</tr>
	
	
	<tr>
		<td class='joinOpTitle'>
			부가서비스 </td><td> <input type='text' class='pol_tbl_val'/>
			<input type='button' value='추가' class='pol_tbl_add'/> 
			<input type='button' value='조회' id='pol_tbl_srch_bugaService'/>
		</td>
	</tr>
</table>
<script>
$(function(){
	$('#pol_tbl tr td').css('border','1px solid #4D4949');
	$('#pol_tbl').css('width','1200px').css('height','450px').css('margin','0 auto');
	$('#tariffTbl').css('width','750px'); 
	$('#tariffTbl tr td').css('border','1px solid gray'); 
	
	var joinOp = {};
	joinOp.tariffList = function() {
		console.log('joinOp.tariffList');
		$.ajax({
			url:'${HOME}/joinOp/tariff/list.do',
			type:'POST',
			dataType:'json',
			data : {
				title : '요금제',
				telecom : 'skt',
			},
			success : function(data){
				
				var $tbl = $('#tariffTbl');
				$('<tr>').css('border','1px solid black').append($('<td>').text('요금제'))
					.append($('<td>').css('border','1px solid black').text('기본료'))
					.append($('<td>').css('border','1px solid black').text('할인'))
					.append($('<td>').css('border','1px solid black').text('비고'))
					.appendTo($tbl);
				for(var i in data.list){
					$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
					.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
					.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
					.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
					.appendTo($tbl);
								
				}
				
			},
			error : function(xhr, status, msg){
				alert('요금제 리스트 호출에 에러가 발생했습니다.');
				console.log(msg);
			}
		});
		

	};
	joinOp.regist = function(){
		console.log('joinOp.regist');
		var $title = $.trim($('.joinOpTitle').val());
		var $telecom = $('#tel').val();
		var $value = $('.pol_tbl_val').val();
		
	   	if(!this.loaded) {
	   		joinOp.tariffList();
	   		
	   		$('.pol_tbl_add').on('click',function(e){
	   			e.preventDefault();
	   			
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/regist.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : $title,
	   						telecom : $telecom,
	   						value : $value
	   						
	   					},
	   					success:function(data){
	   						alert('인증방법 입력성공!');
	   						
	   						var browser = (function() {
	   							  var s = navigator.userAgent.toLowerCase();
	   							  var match = /(webkit)[ \/](\w.]+)/.exec(s) ||
	   							              /(opera)(?:.*version)?[ \/](\w.]+)/.exec(s) ||
	   							              /(msie) ([\w.]+)/.exec(s) ||               
	   							              /(mozilla)(?:.*? rv:([\w.]+))?/.exec(s) ||
	   							             [];
	   							  return { name: match[1] || "", version: match[2] || "0" };
	   							}());
	   						if(browser.name=='msie'){// IE 인 경우 JS 기능 구현 
	   								$value.replaceWith($value.clone(true));
	   							} else { // IE 가 아닌 경우 JS 기능 구현 
	   								 $value.val(""); 
	   							}
	   					},
	   					error:function(e){
	   						alert('인증방법 입력 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_tariff').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : $title,
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('요금제'))
	   							.append($('<td>').css('border','1px solid black').text('기본료'))
	   							.append($('<td>').css('border','1px solid black').text('할인'))
	   							.append($('<td>').css('border','1px solid black').text('비고'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('인증방법 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_authMethod').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : '인증방법',
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('인증방법'))
	   							.append($('<td>').css('border','1px solid black').text('인증방법'))
	   							.append($('<td>').css('border','1px solid black').text('인증방법'))
	   							.append($('<td>').css('border','1px solid black').text('인증방법'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('인증방법 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_joinType').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : '가입유형',
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('가입유형'))
	   							.append($('<td>').css('border','1px solid black').text('가입유형'))
	   							.append($('<td>').css('border','1px solid black').text('가입유형'))
	   							.append($('<td>').css('border','1px solid black').text('가입유형'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('가입유형 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_halbuWol').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : '할부개월',
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('할부개월'))
	   							.append($('<td>').css('border','1px solid black').text('할부개월'))
	   							.append($('<td>').css('border','1px solid black').text('할부개월'))
	   							.append($('<td>').css('border','1px solid black').text('할부개월'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('할부개월 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_yakjung').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : '약정사항',
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('약정사항'))
	   							.append($('<td>').css('border','1px solid black').text('약정사항'))
	   							.append($('<td>').css('border','1px solid black').text('약정사항'))
	   							.append($('<td>').css('border','1px solid black').text('약정사항'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('약정사항 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_bosang').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : '보상등급',
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('보상등급'))
	   							.append($('<td>').css('border','1px solid black').text('보상등급'))
	   							.append($('<td>').css('border','1px solid black').text('보상등급'))
	   							.append($('<td>').css('border','1px solid black').text('보상등급'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('보상등급 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_halinType').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : '할인유형',
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('할인유형'))
	   							.append($('<td>').css('border','1px solid black').text('할인유형'))
	   							.append($('<td>').css('border','1px solid black').text('할인유형'))
	   							.append($('<td>').css('border','1px solid black').text('할인유형'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('할인유형 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_joinFee').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : '가입비',
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('가입비'))
	   							.append($('<td>').css('border','1px solid black').text('가입비'))
	   							.append($('<td>').css('border','1px solid black').text('가입비'))
	   							.append($('<td>').css('border','1px solid black').text('가입비'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('가입비 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   		$('#pol_tbl_srch_bugaService').on('click',function(e){
	   			e.preventDefault();
	   			
	   				$.ajax({
	   					url:'${HOME}/joinOp/search.do',
	   					type:'POST',
	   					dataType:'json',
	   					data:{
	   						title : '부가서비스',
	   						telecom : $telecom
	   						
	   					},
	   					success:function(data){
	   						$('#tariffTbl  tr').remove();
	   						var $tbl = $('#tariffTbl');
	   						$('<tr>').css('border','1px solid black').append($('<td>').text('부가서비스'))
	   							.append($('<td>').css('border','1px solid black').text('부가서비스'))
	   							.append($('<td>').css('border','1px solid black').text('부가서비스'))
	   							.append($('<td>').css('border','1px solid black').text('부가서비스'))
	   							.appendTo($tbl);
	   						for(var i in data.list){
	   							$('<tr>').css('border','1px solid black').append($('<td>').text(data.list[i].joinOpText1))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText2))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText3))
	   							.append($('<td>').css('border','1px solid black').text(data.list[i].joinOpText4))
	   							.appendTo($tbl);
	   										
	   						}
	   					},
	   					error:function(e){
	   						alert('부가서비스 조회 에러입니다.');
	   					}
	   				});
	   			
	   		});
	   	}
	}

	joinOp.regist();
});






	
	

</script>