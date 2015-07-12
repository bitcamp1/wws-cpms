<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<table id='creditRetrieverRespList'></table>
<div id="pager"></div>
	
<script>
$(function(){
	$('#creditRetrieverRespList').jqGrid({
		url:'${HOME}/creditRetriever/resp/list.do',
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
		pager:'#pager',
		pagenation:true,
		rowNum:10,
		rowList:[10,20,30],
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
	 
 });
		
</script>