<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div style='borer:1px solid #ddd; width:100%;'>
			<input type='button' class='pointer buttion06 ' value='복사하기'/>&nbsp;
			<input type='button' class='pointer button06 fancybox' value='신규작성'/>
</div>
<table id='deductionList'></table>
<div id='pager'></div>
	
	<script>

	 $(function(){
		$('#deductionList').jqGrid({
			url:'${HOME}/policy/deduct/list.do',
			datatype:'json',
			mtype:'POST',
			colNames:['일련번호','등록일','차수','시작일','종료일','메모'],
			colModel:[
			          {name:'deductSeq',index:'deductSeq',width:100,align:'center',hidden:true},
			          {name:'deductRegDate',index:'deductRegDate',width:100,align:'center',hidden:true},
			          {name:'deductNum',index:'deductNum',width:100,align:'center'},
			          {name:'deductStartDate',index:'deductStartDate',width:100,align:'center'},
			          {name:'deductEndDate',index:'deductEndDate',width:100,align:'center'},
			          {name:'deductMemo',index:'deductMemo',width:100,align:'center'}
			          ],
			pager:'#pager',
            rowNum:10,
            rowList:[10,20,30],
            sortname:'deductSeq',
            viewrecords:true,
            sortorder:'desc',
            gridview:true,
            autoencode:true,
            caption:'재고관리',
            autowidth:true,
            height:'auto',
            jsonReader:{
                repeattimes:false,
                id:'deductSeq'
                
            },
            search:true,
            title:'false',
            sorttype:'data'/'integer'/'text',
            sortable:true,
            hidden:true,
            editUrl:'${HOME}/policy/deduct/edit.do'
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