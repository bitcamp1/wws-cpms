<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
 
  <%-- <%String ctx = request.getContextPath(); %> --%>
  <form>
       <table style='width:395px;'>
         <tr> 
           <td width="97" height="35">
               <img src='${IMG}/login/02login_img04.gif' width="91" height="25"/>

           </td>
           <td width="202" valign="top"> 
               <input id ="uid" name="uid" type="text" size="31" style='height:29px;'> 
           </td>
           <td width="96" rowspan="2">
               <div align="center" id='btnLogin1234'>
                  <!--  <a href='javascript:' onclick='open_url("get","login.do","'uid='+uid+'pwd='+pwd","wrapper")'> -->
                   <img src='${IMG}/login/btn_login01.gif' width="88" height="67" alt="로그인버튼" 
                   style='cursor:pointer'>
					
              </div>
           </td>
         </tr>
         <tr> 
           <td height="35">
               <img src='${IMG}/login/02login_img05.gif' width="91" height="29">

           </td>
           <td>
               <input id="pwd" name="pwd" type="text" size="31"style='height:29px;'>
           </td>
         </tr>
       </table>
   </form>
   <script>
   $(function(){
	
	   $('#btnLogin1234').click(function(){
			$.ajax('${HOME}/shop/login.do', {
				type: 'POST',
				dataType: 'json',
				data: {
					id: $('#uid').val(),
					pw: $('#pwd').val(),
				}
			,
				success: function(data) {
					 if (data.status == 'success') {
						location.href='${HOME}/home/main.do';
					} else {
						window.alert('사용자 아이디 또는 암호가 일치하지 않습니다!');
					} 
					
					
				},
				error: function(xhr, status, message) {
					window.alert('요청 실패입니다.');
					console.log(message);
				}
			});
		});
   });
   </script>