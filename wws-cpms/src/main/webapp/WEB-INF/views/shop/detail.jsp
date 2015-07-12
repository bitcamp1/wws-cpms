<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../common/header.jsp" %> 

<style>
#shopInfo tr{height:30px;}

</style>


<body bgcolor="white">
<h1 class='pop_tit'>매장정보 보기</h1>

<table style='width:100% ' id='shopInfo'>
    <tr>
        <td style='width:300px' valign='top'>
            <table class="pop_tbl" >
                <tr>
            		<th class="addhead" >샵코드</th>
            		<td style="width:200px">
            			${data.shopSeq }
            			
            		</td>
            		<th class="addhead">상호</th>
            			
            		<td >
            			${data.shopName }
            		</td>
            	</tr>

                <tr>
                    <th height="25"  class="addhead">등록일자</th>
                    <td  >
                       <c:out value="${data.shopRegDate}"/>
                    </td>
                    <th  class="addhead">전화번호</th>
                    <td  >
                       ${data.shopPhone }
                    </td>
                </tr>
                <tr>
                    <th class="addhead">판매유형</th>
                    <td >
	                  ${data.saleType }
                    </td>
                    <th  class="addhead">팩스</th>
                    <td  >
                      ${data.shopFax }
                    </td>
                </tr>
                <tr>
                    <th class="addhead">1:본사 2:총판 3:지사</th>
                    <td>
                        ${data.shopLevel }
			            
                    </td>
                     <th class="addhead">비밀번호</th>
                    <td>
							**********
                      <input type='hidden' value='${data.shopPw }'/> 
			            
                    </td>
                </tr>
                <tr>
                    <th  class="addhead">주소</th>
                    <td  colspan="3" >
                       ${data.zipCode } ${data.doCity } ${data.siGuGun } ${data.doroName }${data.juso_detail }
                    </td>
                </tr>
                
            </table>
        </td> <!-- 왼쪽프레임 끝 -->
        
    </tr>
</table>
</body>

</html>
<!-- <iframe width="100%" height="100%" name="dummyMain" id="dummyMain" src="about:blank" style="display:none;"></iframe>
<iframe width="0" height="0" border="0" frameborder="0" src="/lib/session_update.asp" style="display:none;"></iframe> -->
