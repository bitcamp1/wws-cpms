<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<div>
			<span> [신용정보 검색]</span>&nbsp;&nbsp;&nbsp;
			   
	           이름 :  <input type="text" id='custName'>
	           조회번호 :  <input type="text" id='custNum'>
	           판매점 : ${user}
	            
	           <select>
		           	<option>:::통신사:::</option>
		           	<option>SKT</option>
		           	<option>KT</option>
		           	<option>LGU</option>
		           	<option>기타</option>
	           </select>
	            <input type="button" value="신용조회 " id='retrieverBtn'>
		</div>
		<table id='creditRetriverReqList'>
		
		</table>
		<div id='ReqPager'></div>
		
	<script>
$(function(){
	$('#retrieverBtn').click(function(){
		$.ajax({
			url:'${HOME}/creditRetriever/req.do',
			type:'POST',
			dataType:'json',
			data:{
				custName : $('#custName').val(),
				custNum : $('#custNum').val(),
				shopName : $('#shopName').val(),
				telecom : $('telecom').val()
			},
			success:function(data){
				if(data.status == 'success'){
					$('#reqList').load('${HOME}/creditRetrieve/req/list.do');
				}else{
					window.alert('Ajax 에 FAIL값이 넘어왔습니다. 검토바랍니다.');
				}
			},
			error:function(){}
		});
	});	
	
	$('#creditRetriverReqList').jqGrid({
		url:'${HOME}/creditRetriever/req/list.do',
		datatype:'json',
		mtype:'POST',
		colNames:['순번','등록일자','판매점','판매유형','고객명','조회상태','조회결과','관리','조회내용','통신사'],
		colModel:[{name:'credSeq',index:'credSeq',width:100,align:'center'},
		          {name:'credRegDate',index:'credRegDate',width:100,align:'center'},
		          {name:'shopName',index:'shopName',width:100,align:'center'},
		          {name:'saleType',index:'saleType',width:100,align:'center'},
		          {name:'custName',index:'custName',width:100,align:'center'},
		          {name:'credRetrive',index:'credRetrive',width:100,align:'center'},
		          {name:'credResult',index:'credResult',width:100,align:'center'},
		          {name:'credManage',index:'credManage',width:100,align:'center'},
		          {name:'credNote',index:'credNote',width:100,align:'center'},
		          {name:'telecom',index:'telecom',width:100,align:'center'}
		          ],
		pager:'#reqPager',
		pagenation:true,
		rowNum:10,
		rowList:[10,20,30,40],
		sortname:'credSeq',
		viewrecords:true,
		sortorder:'desc',
		viewrecordes:true,
		gridview:true,
		autoencode:true,
		caption:'신용조회 결과',
		autowidth:true,
		height:'auto',
		jsonReader:{
			repeattimes:false,
			id:'credSeq'
		}
	
		
		
	}).navGrid('#pager',{
		search:true,
		edit:true,
		add:true,
		del:true
	});
	/* $('#creditSrchform').addClass('anySrchform');
	$('#creditSrchform span:eq(0)').addClass('blueFont');
	$('#creditSrchform input).css('size','20').addClass('input_text');
	$('#creditSrchform input).on('onkeydown',function(){
		if (event.keyCode == 13) {document.schFrm.submit();}
	});
	$('#creditSrchform input).addClass('pointer button06'); */
	
	
});
	</script>

<!-- 	$('#creditSrchform input:eq(2)').fancybox({
		helpers :{overlay:{locked : false}},
		href : 'credit/add.do',
		'scrolling'		: 'no',
		'titleShow'		: false,
		'width'			: 1200,
		'height'		: 700,
		'autoSize'		: false,
		'transitionIn'	: 'elastic',
		'transitionOut'	: 'elastic',
		'overlayShow'	: false,
		'type'          :'iframe'
	});  -->

