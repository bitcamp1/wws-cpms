<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<table id='empList'></table>
<div id='pager'></div>

<script>
 $(function(){

			 
	
	$('#empList').jqGrid({
		url:'${HOME}/shop/emp/list.do',
		datatype:'json',
		mtype:'POST',
		colNames:['일련번호','등록일자','활동로그','직책','이름','ID','비밀번호','전화번호',
		          '이메일','메모','판매점SEQ'],
		colModel:[
		        {name:'empSeq',index:'empSeq',width:100,align:'center',hidden:true},   
		        {name:'empRegDate',index:'openDate',width:100,align:'center',hidden:true},  
		        {name:'empLog',index:'empLog',width:100,align:'center'},  
		        {name:'empPosition',index:'empPosition',width:100,align:'center'},  
		        {name:'empName',index:'empName',width:100,align:'center'},  
		        {name:'empId',index:'empId',width:100,align:'center'},  
		        {name:'empPw',index:'empPw',width:100,align:'center'},  
		        {name:'empPhone',index:'empPhone',width:100,align:'center'},  
		        {name:'empEmail',index:'empEmail',width:100,align:'center'},  
		        {name:'empMemo',index:'empMemo',width:100,align:'center'},  
		        {name:'shopSeq',index:'shopSeq',width:100,align:'center'}
		          ]
		      ,


          pager:'#pager',
            rowNum:10,
            rowList:[10,20,30],
            sortname:'empSeq',
            viewrecords:true,
            sortorder:'desc',
            gridview:true,
            autoencode:true,
            caption:'직원리스트',
            autowidth:true,
            height:'auto',
            jsonReader:{
                repeattimes:false,
                id:'empSeq'
                
            },
            search:true,
            title:'false',
            sorttype:'data'/'integer'/'text',
            sortable:true,
            hidden:true,
            editUrl:'${HOME}/shop/emp/edit.do'         
		
	}); 
 });
</script>

