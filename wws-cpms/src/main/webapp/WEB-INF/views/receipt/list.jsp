<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="srch.jsp" %>

<table id='reciptList'></table>
<div id='pager'></div>

<script>
 $(function(){

			 
	
	$('#reciptList').jqGrid({
		url:'${HOME}/receipt/list.do',
		datatype:'json',
		mtype:'POST',
		colNames:['일련번호','개통일자','수납일자','명의자','확정번호','수납유형','정산','미정산','정산여부','총판','지사','메모'],
		colModel:[
		        {name:'rcptSeq',index:'rcptSeq',width:100,align:'center',hidden:true},   
		        {name:'openDate',index:'openDate',width:100,align:'center'},  
		        {name:'rcptDate',index:'rcptDate',width:100,align:'center'},  
		        {name:'custName',index:'custName',width:100,align:'center'},  
		        {name:'confirmNum',index:'confirmNum',width:100,align:'center'},  
		        {name:'rcptType',index:'rcptType',width:100,align:'center'},  
		        {name:'calcPrice',index:'calcPrice',width:100,align:'center'},  
		        {name:'noncalcPrice',index:'noncalcPrice',width:100,align:'center'},  
		        {name:'calcYn',index:'calcYn',width:100,align:'center'},  
		        {name:'agencyName',index:'agencyName',width:100,align:'center'},  
		        {name:'shopName',index:'shopName',width:100,align:'center'},  
		        {name:'rcptMemo',index:'rcptMemo',width:100,align:'center'}
		          ]
		      ,


          pager:'#pager',
            rowNum:10,
            rowList:[10,20,30],
            sortname:'rcptSeq',
            viewrecords:true,
            sortorder:'desc',
            gridview:true,
            autoencode:true,
            caption:'요금수납',
            autowidth:true,
            height:'auto',
            jsonReader:{
                repeattimes:false,
                id:'rcptSeq'
                
            },
            search:true,
            title:'false',
            sorttype:'data'/'integer'/'text',
            sortable:true,
            hidden:true,
            editUrl:'${HOME}/recipt/edit.do'         
		
	}); 
	$('#receiptList').jqGrid('setGroupHeaders',{
        useColSpanStyle:false,
        groupHeaders:[
		   {startColumnName:'openDate',numberOfColumns:5,titleText:'개통'},
           {startColumnName:'calcPrice',numberOfColumns:3,titleText:'금액'},
           {startColumnName:'agencyName',numberOfColumns:3,titleText:'요청구분'}    
           
       ] 
   }); 
 });
</script>

