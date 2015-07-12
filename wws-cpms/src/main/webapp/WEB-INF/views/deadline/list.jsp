<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<table id='deadlineList'>	</table>
<div id='pager'></div>
	<script>
	$(function(){
		$('#deadlineList').jqGrid({
			url:'${HOME}/dline/list.do',
			datatype:'json',
			mtype:'POST',
			colNames:['일련번호','대리점','신규개통','번호이동','기기변경','보상기변','정책','리베이트','커미션','마진'],
			colModel:[
				{name:'dlineSeq',index:'dlineSeq',width:100,align:'center'},
				{name:'shopName',index:'shopName',width:100,align:'center'},
				{name:'openNew',index:'openNew',width:100,align:'center'},
				{name:'openMnp',index:'openMnp',width:100,align:'center'},
				{name:'openChange',index:'openChange',width:100,align:'center'},
				{name:'openReward',index:'openReward',width:100,align:'center'},
				{name:'policy',index:'policy',width:100,align:'center'},
				{name:'rebate',index:'rebate',width:100,align:'center'},
				{name:'commission',index:'commission',width:100,align:'center'},
				{name:'margin',index:'margin',width:100,align:'center'},
			          ],
			pager:'#pager',
			pagenation:true,
			rowNum:10,
			rowList:[10,20,30,40],
			sortname:'dlineSeq',
			viewrecords:true,
			gridview:true,
			sortorder:'desc',
			caption:'개통마감',
			autoencode:true,
			autowidth:true,
			height:'auto',
			jsonReader:{
				repeatitems:false,
				id:'dlineSeq'
			},
			search:true,
			title:'false',
			resizable:true,
			hidden:true,
			editUrl:"${HOME}/deadline/edit.do"
		});
		$('#deadlineList').jqGrid('navGrid','#pager',
			{excel:false,add:false,search:true,edit:true,del:true,view:true,refresh:true},
			{},
			{},
			{},
			{},
			{},
			{}
		);
	});
	
	</script>