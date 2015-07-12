<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id='inventoryList'></table>
<div id='pager'></div>
<!-- <table  id='storList' class='anyLst tp_list1'>
	<tr height="26">
		<td class="subtitle_subject" style='height:20px;' colspan="8">입고관리</td>
	</tr>
	<tr>
		<th class="listhead1">입고등록/출고등록</th><th class="listhead1">기기회수등록</th>
		<th class="listhead1">거래명세서등록(USIM)</th>
		<th class="listhead1">공기계판매등록</th>
			<th class="listhead1">불량등록</th>
			<th class="listhead1">분실재고등록</th>
		등록일
		<th class="listhead1">입고수량</th>
		<th class="listhead1">입고로그</th>
		<th class="listhead1">재고세팅방법</th>
		<th class="listhead1"></th>
		<th class="listhead1">출고수량</th>
		<th class="listhead1">츨고로그</th>
		<th class="listhead1">거래명세서현황</th>
		
		<th class="listhead1">재고이동</th>
		<th class="listhead1">기기회수현황</th>
		<th class="listhead1">기기회수명세서현황</th>
		<th class="listhead1">공기계판매현황</th>
		<th class="listhead1">공기계출고로그</th>
	
		<th class="listhead1">불량현황</th>
		
		<th class="listhead1">분실재고현황</th>
	</tr>
</table> -->
<script>
	$(function(){
		$('#inventoryList').jqGrid({
			url:'${HOME}/prod/inv/list.do',
			datatype:'json',
			mtype:'POST',
			colNames:['로그기록','입고수량','출고수량','기기회수','불량수량','기타손실','재고수량','거래명세서','기기회수명세서'],
			colModel:[
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