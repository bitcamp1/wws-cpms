<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>


</script>
<table id='custList'></table>
<div id='pager'></div>

<script>

$(function(){
	function underline(cellvalue, options, rowObject ){
		var url='<span style="text-decoration:underline; cursor:pointer">'+cellvalue+'</span>';
		return url;
		
	}
	function tooltip(rowid,rdata){
		return 'style="color:red"';
	}
	function ShowMessage(data,result){
		
	}

          $('#custList').jqGrid({
        	  url:'${HOME}/cust/list.do',
        	  datatype:'json',
        	  mtype:'POST',
        	 colNames:['일련번호', '고객명','전화번호','관리번호','할부원금','개통여부',
        	            '취소여부','진행상태','폰모델','개통점','통신사','등록일'],
        	  colModel:[
						{name:'custSeq',index:'custSeq',width:100,align:'center',hidden:true},
        	            {name:'custName',index:'custName',width:100,align:'center',formatter:underline,cellattr:tooltip},
        	            {name:'custPhone',index:'custPhone',width:100,align:'center'},
        	            {name:'custNum',index:'custNum',width:100,align:'center',hidden:true},
        	            {name:'totPrice',index:'totPrice',width:50,align:'center'},
        	            {name:'openYn',index:'openYn',width:50,align:'center'},
        	            {name:'cancleYn',index:'cancleYn',width:50,align:'center'},
        	            {name:'progStat',index:'progStat',width:50,align:'center'},
        	            
        	            {name:'phoneModel',index:'phoneModel',width:50,align:'center'},
        	            {name:'shopName',index:'shopName',width:100,align:'center'},
        	            {name:'telecom',index:'telecom',width:100,align:'center'},
        	            
        	            
        	            {name:'custRegDate',index:'custRegdate',width:100,align:'center'}
        	            
        	            ],
              pager:"#pager",
              pagenation:true,
              rowNum:10,
              rowList:[10,20,30],
              rownumbers:true,
              sortname : 'custSeq',
              emptycords:'등록된 고객이 없습니다.',
              viewrecords:true,
              sortorder:"desc",
              viewrecordes:true,
              gridview:true,
              autoencode:true,
        	  caption:'고객리스트',
        	  autowidth:true,
        	 /*  multiselect:true, */
        	  height:'auto',
        	  jsonReader:{
        		  repeatitems:false,
        		  id:"custSeq",
        		  page:'page',
        		  total:'total'
        	  }
        	  ,
        	  onCellSelect:function(rowid,index,contents,event){

       		   $.ajax({
       			  type:'GET',
       			  dataType:'json',
       			  success:function(cust){
       					console.log('cust:'+cust);
       					window.open('${HOME}/cust/detail.do?no='+rowid,'','width=800,height=700,left=700,top=0');
       			  },
       			 
           		  error:function(e){
           			  alert('에러');
           		  }
       		  });
       		 
        		
        	  },
        	  hoverrows:true,
        	  
        
        	  loadComplete: function () {
				
        	  },
        	  search : true,
        	  title : "false",
        	  resizable : true,
        	  sorttype:"date"/"integer"/"text",
        	  sortable : true,
        	  hidden :true,
        	  editurl:"${HOME}/cust/edit.do"
        	  
        	  
        	  
          });
   
          $('#custList').jqGrid('navGrid','#pager'
       		  ,{excel:false,add:false,search:true,edit:true,del:true,view:true,refresh:true}
         	  ,{} //edit option
         	  ,{} // add 
         	  ,{} // delete
         	  ,{}
         	  ,{} //view
         	  
          );
          $('#custList').jqGrid('setGridParam', 
        			/* {ondblClickRow: function(rowid,iRow,iCol,e){
        								alert('double clicked');
        							}
        			} */
        			{url:''}
        	);
          
        
        });
</script>