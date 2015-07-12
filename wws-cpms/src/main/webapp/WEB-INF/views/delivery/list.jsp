<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<table id='deliList'></table>
<div id='pager'></div>

<script>
 $(function(){
	 $('#deliList').jqGrid({
		 url:'${HOME}/deli/list.do',
		 datatype:'json',
		 mtype:'POST',
		 colNames:['번호','등록일자','개통처','모델명','유심카드','색상','고객명','휴대번호',
		           '진행상태','개통상태','고객번호','일련번호','송장번호','유심번호'
		           ],
		 colModel:[
		           {name:'deliSeq',index:'deliSeq',width:100,align:'center'},
		           {name:'deliRegDate',index:'deliRegDate',width:100,align:'center'},
		           {name:'openShop',index:'openShop',width:100,align:'center'},
		           {name:'phoneModel',index:'phoneModel',width:100,align:'center'},
		           {name:'usimCard',index:'usimCard',width:100,align:'center'},
		           {name:'phoneColor',index:'phoneColor',width:100,align:'center'},
		           {name:'custName',index:'custName',width:100,align:'center'},
		           {name:'phoneNum',index:'phoneNum',width:100,align:'center'},
		           {name:'progStat',index:'progStat',width:100,align:'center'},
		           {name:'openYn',index:'openYn',width:100,align:'center'},
		           {name:'custNum',index:'custNum',width:100,align:'center'},
		           {name:'serialNum',index:'serialNum',width:100,align:'center'},
		           {name:'invoiceNum',index:'invoiceNum',width:100,align:'center'},
		           {name:'usimNum',index:'usimNum',width:100,align:'center'},
		           ],
		 pager:'#pager',
		 pagenation:true,
		 rowNum:10,
		 rowList:[10,20,30,40],
		 sortname:'deliSeq',
		 viewrecords:true,
		 sortorder:'desc',
		 gridview:true,
		 autoencode:true,
		 caption:'배송관리',
		 autowidth:true,
		 height:'auto',
		 jsonReader:{
			 repeattimes:false,
			 id:'deliSeq'
		 },
		 search:true,
		 title:'false',
		 resizable:true,
		 sorttype:'data'/'integer'/'text',
		 sortable:true,
		 hidden:true,
		 editUrl:'${HOME}/deli/edit.do'
	 });
	 $('#deliList').jqGrid('navGrid','#pager'
             ,{excel:false,add:false,search:true,edit:true,del:true,view:true,refresh:true}
           ,{} //edit option
           ,{} // add 
           ,{} // delete
           ,{}
           ,{} //view
           
      );
	 
 });

		
</script>
