<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 		<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
        <link href='http://fonts.googleapis.com/css?family=Carrois+Gothic+SC|Noto+Sans|Average+Sans' 
        rel='stylesheet' type='text/css' />
        <link rel="stylesheet"	href="${JQ_CSS}/jquery-ui-1.10.4.custom.min.css" type="text/css"/>
		<link rel="stylesheet" 	href="${JQ_CSS}/ui.jqgrid.css" type="text/css"  />
        <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
        <script src="${JQ_LIB}/i18n/grid.locale-kr.js"></script>
		<script src="${JQ_LIB}/jquery.jqGrid.min.js"></script>
		<script src="${JQ_LIB}/jquery.jqGrid.src.js"></script>
            <div id='content'>
            </div>
          <!--   <table id='jqGrid'></table> -->
  

    <script>
        //loginForm.init();
        //indexGlobal.userInfo();
        $(function(){
          $('#content').load('${HOME}/signon.do');
          $('#jqGrid').jqGrid({
        	  url:'http://apis.daum.net/socialpick/search?output=json',
        	  datatype:'jsonp',
        	  mtype:'get',
        	  colNames:['순위','소셜픽키워드','이슈에 대한 링크 URL', '요약문','검색수','트윗수',
        	            '검색 결과의 페이지 번호','순위 상승/하락수','카테고리'],
        	  colModel:[
        	            {name:'rank',index:'rank',width:40,align:'center'},
        	            {name:'keyword',index:'keyword',width:100,align:'left'},
        	            {name:'link',index:'link',width:100,align:'left'},
        	            {name:'content',index:'content',width:200,align:'left'},
        	            {name:'count',index:'count',width:100,align:'center'},
        	            {name:'quotation_cnt',index:'quotation_cnt',width:100,align:'center'},
        	            {name:'comment_cnt',index:'comment_cnt',width:100,align:'center'},
        	            {name:'rank_diff',index:'rank_diff',width:100,align:'center'},
        	            {name:'category',index:'category',width:100,align:'center'},
        	            
        	            ],
        	  caption:'다음소셜픽',
        	  jsonReader:{
        		  repeatitems:false,
        		  id:"rank",
        		  root:function(obj){return obj.socialpick.item;},
        		  page:function(obj){return 1;},
        		  total:function(obj){return 1;},
        		  record:function(obj){return obj.socialpick.item.length;}
        	  }
        	  
          });
          
        });
    </script>