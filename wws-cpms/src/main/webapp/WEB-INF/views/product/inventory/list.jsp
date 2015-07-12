<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id='inventoryList'></table>
<div id='pager'></div>
<script>
	$(function(){
		/* var selectedRow = $('#inventoryList').jqGrid('getGridParam','selectedRow');
		var selectedData = $('#inventoryList').jqGrid('getRowData',selectedRow); 
		http://blog.naver.com/javasniper?Redirect=Log&logNo=130168909480*/
		
		$('#inventoryList').jqGrid({
			url:'${HOME}/prod/inv/list.do',
			datatype:'json',
			mtype:'POST',
			colNames:['일련번호','로그기록','입고수량','출고수량','기기회수','불량수량','기타손실','재고수량','거래명세서','기기회수명세서'],
			colModel:[
					  {name:'invSeq',index:'invSeq',width:100,align:'center',hidden:true},
			          {name:'invRegDate',index:'invRegDate',width:100,align:'center'},
		        	  {name:'importNum',index:'importNum',width:50,align:'center'},
		        	  {name:'exportNum',index:'exportNum',width:50,align:'center'},
		        	  {name:'returnNum',index:'returnNum',width:50,align:'center'},
		        	  {name:'poorNum',index:'poorNum',width:50,align:'center'},
		        	  {name:'lossNum',index:'lossNum',width:50,align:'center'},
		        	  {name:'stockNum',index:'stockNum',width:50,align:'center'},
		        	  {name:'txInvoice',index:'txInvoice',width:50,align:'center'},
		        	  {name:'returnInvoice',index:'returnInvoice',width:50,align:'center'}
			          ],
            pager:'#pager',
            rowNum:10,
            rowList:[10,20,30],
            sortname:'invSeq',
            viewrecords:true,
            sortorder:'desc',
            gridview:true,
            autoencode:true,
            caption:'재고관리',
            autowidth:true,
            height:'auto',
            jsonReader:{
            	repeattimes:false,
            	id:'invSeq'
            	
            },
            search:true,
            title:'false',
            sorttype:'data'/'integer'/'text',
            sortable:true,
            hidden:true,
            editUrl:'${HOME}/prod/inv/edit.do'
			
			
		});
		 $('#inventoryList').jqGrid('setGroupHeaders',{
			 useColSpanStyle:false,
			 groupHeaders:[
            	{startColumnName:'invRegDate',numberOfColumns:1,titleText:'등록시간'}	,
            	{startColumnName:'importNum',numberOfColumns:6,titleText:'재고현황'}	,
            	{startColumnName:'returnNum',numberOfColumns:2,titleText:'명세서 보기'}	
            	
            ] 
		}); 
		 
		
	});
</script>