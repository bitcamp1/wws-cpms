<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div style='borer:1px solid #ddd; width:100%;'>
			<input type='button' class='pointer buttion06 ' value='복사하기'/>&nbsp;
			<input type='button' class='pointer button06 fancybox' value='신규작성'/>
</div>
<table id='rebateList'></table>
<div id='pager'></div>
	
	<script>

	 $(function(){
		$('#rebateList').jqGrid({
			url:'${HOME}/policy/rebate/list.do',
			datatype:'json',
			mtype:'POST',
			colNames:['일련번호','등록일','차수','시작일','종료일','메모'],
			colModel:[
			          {name:'rebateSeq',index:'rebateSeq',width:100,align:'center',hidden:true},
			          {name:'rebateRegDate',index:'rebateRegDate',width:100,align:'center',hidden:true},
			          {name:'rebateNum',index:'rebateNum',width:100,align:'center'},
			          {name:'startDate',index:'startDate',width:100,align:'center'},
			          {name:'endDate',index:'endDate',width:100,align:'center'},
			          {name:'rebateMemo',index:'rebateMemo',width:100,align:'center'}
			          ],
			pager:'#pager',
            rowNum:10,
            rowList:[10,20,30],
            sortname:'rebateSeq',
            viewrecords:true,
            sortorder:'desc',
            gridview:true,
            autoencode:true,
            caption:'재고관리',
            autowidth:true,
            height:'auto',
            jsonReader:{
                repeattimes:false,
                id:'rebateSeq'
                
            },
            search:true,
            title:'false',
            sorttype:'data'/'integer'/'text',
            sortable:true,
            hidden:true,
            editUrl:'${HOME}/policy/rebate/edit.do'
		});
		$('.fancybox').fancybox({
			helpers :{
				overlay : {
					locked : false
				}
			},
			href : 'rebate_add.do',
			'scrolling'		: 'no',
			'titleShow'		: false,
			'width'			: 600,
			'height'		: 400,
			'autoSize'		: false,
			'transitionIn'	: 'elastic',
			'transitionOut'	: 'elastic',
			'overlayShow'	: false,
			'type'          :'iframe'
		});
	 });
	</script>