<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style='margin:10px 0 20px 0;'>
			
		
		
		<div id='addPhone'>
			
			<span> [단말기 등록]</span>&nbsp;&nbsp;&nbsp;
			   
	        	단말기명 : <input type="text" id='phoneName' name="phoneName" class='inputTxt'/>  
	           	브랜드 :  <input type="text" id='phoneBrand' name="phoneBrand" class='inputTxt' />
	           	모델 :  <input type="text" id='phoneModel' name="phoneModel"  class='inputTxt'/>
	          	출고가 : <input type="text" id='phonePrice' name="phonePrice" class='inputTxt'/>
	          	통신사 :
	          	<select name='telecom' id='telecom'>
					<option value='skt' selected>SKT</option>
					<option value='kt'>KT</option>
					<option value='lgu'>LGU+</option>
			
				</select>
	          	<input type="button" value="등록 " id='addPhoneBtn'/>
	          	<input type="button" value="취소 " class='resetBtn'/>
	          </div>
	          	
		<div id='addUsim'>
			
			<span> [USIM 등록]</span>&nbsp;&nbsp;&nbsp;
			   
	        	모델 : <input type="text" id='usimName' name="usimName"class='inputTxt'/>  
	           	일련번호 :  <input type="text" id='usimNum' name="usimNum" class='inputTxt'/>
	           	가격 :  <input type="text" id='usimPrice' name="usimPrice" class='inputTxt'/>
	            <input type="button" value="등록 " id='addUsimBtn' />
	            <input type="button" value="취소 " class='resetBtn'/>
	    </div>
	    <div id='addColor'>
	            <span> [색상 등록]</span>&nbsp;&nbsp;&nbsp;
	          	색상 : <input type="text" id='phoneColor' name="phoneColor" class='inputTxt'/>
	          	색상코드 : <input type="text" id='phoneColorCode' name="phoneColorCode" class='inputTxt'/>
	          	<input type="button" value="등록 " id='addPhoneColorBtn'/>
	          	<input type="button" value="취소 " class='resetBtn'/>
		</div>
		
		
</div>
		<table id='creditRetriverReqList'>
		
		</table>
		<div id='pager'></div>

<table id='prodList'></table>
<div id='pager'></div>
<script>
	$(function(){
		$('#prodList').jqGrid({
			url:'${HOME}/prod/phone/list.do',
			mtype:'POST',
			datatype:'json',
			colNames:['브랜드','제품명','모델명','출고가','색상'],
					//'일련번호', '통신사', '등록일' 은 hidden
					
			         
			colModel:[
			          {name:'phoneBrand',index:'phoneBrand',width:100,align:'center'},
			          {name:'phoneName',index:'phoneName',width:100,align:'center'},
			          {name:'phoneModel',index:'phoneModel',width:100,align:'center'},
			          {name:'phonePrice',index:'phonePrice',width:100,align:'center'},
			          {name:'phoneColor',index:'phoneColor',width:100,align:'center'}
			          ],
			 pager:"#pager",
             pagenation:true,
             rowNum:10,
             rowList:[10,20,30],
             sortname : 'phoneModel',
             viewrecords:true,
             sortorder:"desc",
             viewrecordes:true,
             gridview:true,
             autoencode:true,
             caption:'휴대폰 등록현황',
             autowidth:true,
             height:'auto',
             jsonReader:{
                 repeatitems:false,
                 id:"phoneModel"
                
             },
             search : true,
             title : "false",
             resizable : true,
             sorttype:"date"/"integer"/"text",
             sortable : true,
             hidden :true,
             editurl:"${HOME}/prod/phone/edit.do"
             
			
		});
		$('#addUsimBtn').on('click',function(e){
			e.preventDefault();
			var $0 = $('#addUsim >input').eq(0);
			var $1 = $('#addUsim >input').eq(1);
			var $2 = $('#addUsim >input').eq(2);
			$.ajax({
				url:'${HOME}/usim/add.do',
				type:'POST',
				dataType:'json',
				data:{
					usimName : $0.val(),
					usimNum : $1.val(),
					usimPrice : $2.val(),
					shopSeq : shopSeq
					
				},
				success:function(data){
					alert('USIM이 등록되었습니다.');
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
							$0.replaceWith($0.clone(true));
							$1.replaceWith($1.clone(true));
							$2.replaceWith($2.clone(true));
							$3.replaceWith($3.clone(true));
							$4.replaceWith($3.clone(true));
						} else { // IE 가 아닌 경우 JS 기능 구현 
							 $0.val(""); 
							 $1.val(""); 
							 $2.val(""); 
						}
					
					
				},
				error:function(e){
					alert('유심등록 실패입니다.');
				}
				
				
			});
		});
		
		$('#addPhoneBtn').on('click',function(e){
			e.preventDefault();
			var $0 = $('#addPhone >input').eq(0);
			var $1 = $('#addPhone >input').eq(1);
			var $2 = $('#addPhone >input').eq(2);
			var $3 = $('#addPhone >input').eq(3);
			var $4 = $('#addPhone >input').eq(4);
	
			$.ajax({
			
				url:'${HOME}/prod/addPhone.do',
				type:'POST',
				dataType:'json',
				data:{
					phoneName : $0.val(),
					phoneBrand : $1.val(),
					phoneModel : $2.val(),
					phonePrice : $3.val(),
					telecom : $4.val(),
					shopSeq : shopSeq
					
					
				},
				success:function(data){
					alert('폰이 등록되었습니다.');
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
							$0.replaceWith($0.clone(true));
							$1.replaceWith($1.clone(true));
							$2.replaceWith($2.clone(true));
							$3.replaceWith($3.clone(true));
							$4.replaceWith($3.clone(true));
						} else { // IE 가 아닌 경우 JS 기능 구현 
							 $0.val(""); 
							 $1.val(""); 
							 $2.val(""); 
							 $3.val(""); 
							 $4.val(""); 
						}
					
					
					
				},
				error:function(e){
					alert('폰등록 실패입니다.');
				}
				
				
			});
			
		});
		$('#addPhoneColorBtn').on('click',function(e){
			e.preventDefault();
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
					
				},
				error:function(e){
					alert('폰등록 실패입니다.');
				}
				
				
			});
			
		});
		$('.resetBtn').on('click',function(e){
			e.preventDefault();
			$('.inputTxt').val('');
			
		});
	 
		
	});
</script>