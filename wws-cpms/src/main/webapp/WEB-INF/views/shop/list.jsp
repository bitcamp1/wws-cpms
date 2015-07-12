<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<table id=shopList'></table>
<div id='pager'></div>

<script>
 $(function(){

			 
	
	$('#shopList').jqGrid({
		url:'${HOME}/shop/list.do',
		datatype:'json',
		mtype:'POST',
		colNames:['CODE','상호','샵비밀번호','전화번호','담당','담당전화','팩스','담당이메일','주소','메모','판매유형','레벨','등록일'],
		colModel:[
		        {name:'shopSeq',index:'shopSeq',width:100,align:'center'},   
		        {name:'shopName',index:'shopName',width:100,align:'center'},  
		        {name:'shopPw',index:'shopPw',width:100,align:'center',hidden:true},  
		        {name:'shopPhone',index:'shopPhone',width:100,align:'center'},  
		        {name:'chargerName',index:'chargerName',width:100,align:'center'},  
		        {name:'chargerPhone',index:'chargerPhone',width:100,align:'center'},  
		        {name:'shopFax',index:'shopFax',width:100,align:'center'},  
		        {name:'chargerEmail',index:'chargerEmail',width:100,align:'center'},  
		        {name:'shopAddress',index:'shopAddress',width:100,align:'center'},  
		        {name:'shopMemo',index:'shopMemo',width:100,align:'center'},  
		        {name:'saleType',index:'saleType',width:100,align:'center'},  
		        {name:'shopLevel',index:'shopLevel',width:100,align:'center'},
		        {name:'shopRegDate',index:'shopRegDate',width:100,align:'center',hidden:true}
		          ]
		      ,


          pager:'#pager',
            rowNum:10,
            rowList:[10,20,30],
            sortname:'shopSeq',
            viewrecords:true,
            sortorder:'desc',
            gridview:true,
            autoencode:true,
            caption:'등록된 점포리스트',
            autowidth:true,
            height:'auto',
            jsonReader:{
                repeattimes:false,
                id:'shopSeq'
                
            },
            search:true,
            title:'false',
            sorttype:'data'/'integer'/'text',
            sortable:true,
            hidden:true,
            editUrl:'${HOME}/shop/edit.do'         
		
	}); 
	
 });
</script>

