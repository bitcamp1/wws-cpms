<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file='../common/includeLib.jsp' %>
    <head>
<style>
   .introLogin{background-color:white;width:800px;height:700px;margin:0 auto;margin-top:100px;}
</style>
</head>
<body >
<div id='wrapper'></div>
 <div id='introLogin'>
                <table>
                    <tr> 
                       	<td >
                       		<img src='${IMG}/login/02login_img03.gif'  alt="아이디와 패스워드를 입력해 주세요">
                    	</td>
                    </tr>
                    <tr> 
	                      <td height="25" valign="top">
	                    	<img src='${IMG}/login/02login_img06.gif'  alt="경계선">
	                   	  </td>
                    </tr>
                    <tr> 
                      <td >
                           <%@include file="includeSignOnForm.jsp" %> 
                        
                       </td>
                    </tr>
                    <tr>
                      <td height="25" valign="bottom" >
                          <img src='${IMG}/login/02login_img06.gif' alt='경계선'/>
                      </td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                  </table>
                
                  <div>
                          <p id='findUid' class="txt mt15" style='margin-bottom:5px;'>
                            <img src='${IMG}/login/txt_id_01.gif' alt='아이디를 잊으셨나요?' />
                            
                            <a href="#" ><!--일단 나중에 구현하자  onclick="open_popup1()" -->
                            
                            <img src='${IMG}/login/btn_id_find.gif'  alt="아이디찾기" /></a>
                            
                        </p>
                        <p id='findPwd' class="txt" style='margin-bottom:5px;'>
                            <img src='${IMG}/login/txt_id_02.gif' title="" alt="비밀버호를 잊어버리셨나요?" />
                            
                            <a href="#" >  <!-- onclick="open_popup2()" -->
                           
                            <img src='${IMG}/login/btn_pw_find.gif' title="" alt="비밀번호찾기" /></a>
                            
                        </p>
                        <p class="txt">
                            <img src='${IMG}/login/txt_id_03.gif' title="" alt="아이디가 없으시면 회원으로 가입하세요." />
                            <a href="#" ><!--  onclick="open_popup3()" -->
                            <img src='${IMG}/login/btn_join.gif' id='join' title="" alt="회원가입하기" /></a>
                        </p>
                  
                   </div>
                
             </div>
            <script>
            $(function(){
            	$('#introLogin').addClass('introLogin');
            	$('#introLogin tr:eq(2)').css('float','right');
            	$('#introLogin div').css('float','right').css('margin-right','150px');
            	$('#findUid').on('click',function(){
                    var url = "views/admin/findUid.jsp";
                    
                    window.open(url,'FINDID','width=800,height=250,toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no');
               
                    return false;
                });
            	$('#findPwd').on('click',function(){
                    var url = "views/admin/resetPwd.jsp";
                    
                    window.open(url,'FINDID','width=800,height=250,toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no');
               
                    return false;
                });
            	$('#join').on('click',  function(){
                    var url = "views/admin/join.jsp";
                    
                    window.open(url,'JOIN','width=800,height=800,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no');
                
                
                    return false;
                    
                });
            
            function open_popup2(){
                var url = "views/admin/findId.jsp";
                
                window.open(url,'RESETPW', 'width=800,height=250,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no');
           
            
                return false;
            }
          
           $(document).ready(function(){
                $('#btn').click(function(){
                    $.ajax('/shop/login.do',{
                        type:'POST',
                        dataType:'json',
                        data:{
                            id : $('#id').val(),
                            pw : $('#pw').val(),
                        
                        },
                        success:function(data){
                            console.log("data값 : "+data);
                             if(data.status=="success"){
                             location.href= '/oper_main.do';
           
                            }else{
                                window.alert('사용자의 아이디 또는 암호가 일치하지 않습니다.');
                            } 
                            
                        },
                        error : function(xhr, status, message){
                            window.alert('계속 실패의 연속입니다');
                            console.log("xhr콘솔:");
                            console.log(xhr);
                            console.log("status콘솔:");
                            console.log(status);
                            console.log("message콘솔:");
                            console.log(message);
                        }
                    });
                    
                    
                });
           
           });
            });
            </script>
 </body>
 </html>
