<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<table><tr><td>
<table class="pop_tbl" >

                <tr>
            		<th class="addhead">거래처코드</th>
            		<td >
            			<input type="text" name="shopName" id='shopName'/>
            		</td>
            			
            		<td colspan=2>
            			※거래처 코드는 자동 부여됩니다
            		</td>
            	</tr>

                <tr>
                    <th height="25"  class="addhead">상호</th>
                    <td  >
                        <input type="text" name="regDate" value="2013-10-25" readonly>
                    </td>
                    <th  class="addhead">기존통신사</th>
                    <td  >
                        <select name="guTongsin" onchange="document.addFrm.eventCode.focus();" style='width:120px;'>
	            		    <option value=''>::통신사::</option>
	            		    <option value='1002' style='color:#ff0000;'>SKT</option>
							<option value='1003' style='color:#0000ff;'>KT</option>
							<option value='1004' style='color:#ff00ff;'>LGU+</option>
							<option value='1005' style='color:#cc99ff;'>MVNO</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="addhead">등록번호</th>
                    <td >
	                    <select name="eventCode" onchange="document.addFrm.nomineeName.focus();" style='width:120px;'>
		            		<option value="">::판매유형::</option>
		            		<option value='1001'>오프라인</option>
							<option value='1002'>T-gate</option>
	            		</select>
                    </td>
                    <th  class="addhead">명의자</th>
                    <td  >
                        <input type="text" id='custName' name='custName'/>
                    </td>
                </tr>
                <tr>
                    <th class="addhead">관리번호</th>
                    <td>
                        <input type="text" id='custNum' name='custNum'/> 
			            
                    </td>
                    <th class="addhead">개통처</th>
            		<td>
            			<input type='text'/>
            		</td>
                    
                </tr>
                <tr>
                	<th class="addhead">휴대전화</th>
                    <td colspan=3>
                        <select name="guTongsin" onchange="document.addFrm.eventCode.focus();" style='width:120px; '>
	            		    <option value='010' style='color:#ff0000;text-align: middle'>010</option>
							<option value='011' style='color:#0000ff;text-align: middle'>011</option>
							<option value='016' style='color:#ff00ff;text-align: middle'>016</option>
							<option value='018' style='color:#cc99ff;text-align: middle'>018</option>
                        </select>
			            <input type="text" name="nomineeCell2" value="" class="input_text imed" size=14 onblur="numberCheck(this);" onkeyup="if (this.value.length==4){document.addFrm.nomineeCell3.focus();}"> -
			            <input type="text" name="nomineeCell3" value="" class="input_text imed" size=14 onblur="numberCheck(this);" onkeyup="if (this.value.length==4){document.addFrm.openerCode.focus();}">
                    </td>
                </tr>
                <tr height="30">
            		
            		<th class="addhead">비상연락처</th>
            		<td colspan=3>
            		    <input type="text" size="13" maxlength="13" onblur="numberCheck(this);" onkeyup="if (this.value.length==3){document.addFrm.emerCell2.focus();}"> -
			            <input type="text" size="14" maxlength="14" onblur="numberCheck(this);" onkeyup="if (this.value.length==4){document.addFrm.emerCell3.focus();}"> -
			            <input type="text" size="14" maxlength="14" onblur="numberCheck(this);">
            		</td>
            	</tr>
                <tr>
                    <th  class="addhead">배송주소</th>
                    <td  colspan="3" >
                        <input type="text" readonly size=15/>
                        -<input type="text" readonly size=15/>
        	            <input type="button" value="주소검색" class="button06"  onclick="GlbZipcodeSearch('C11011');">
        	            <br>
        	            <input type="text" />
                    </td>
                </tr>
                 <tr>
                	<th class="addhead">배송방법</th>
                    <td colspan=3>
                        <select name="baesong" onchange="document.addFrm.eventCode.focus();" style='width:120px; '>
	            		    <option value='taekbae' style='color:#ff0000;text-align: middle'>택배</option>
							<option value='quick' style='color:#0000ff;text-align: middle'>퀵</option>
							<option value='none' style='color:#ff00ff;text-align: middle'>없음</option>
                        </select>
			            <input type="text" name="nomineeCell2" value="" class="input_text imed" size=30 
			            onblur="numberCheck(this);" 
			            placeholder="메모"
			            onkeyup="if (this.value.length==4){document.addFrm.nomineeCell3.focus();}"> 
                    </td>
                </tr>
				<tr>
            		<th class='addhead'>신청자정보</th>
            		<td class="pdt3" colspan=3>
            			<input type="checkbox" name="chkApp" value="1" onclick="changeName();" id="chkApp_1" style='margin-left:100px;'>
            				<label for="chkApp_1">명의자와 동일</label>
            			<input type="checkbox" name="chkLegal" value="1">
            				<label for="chkApp_1">법정대리인</label>
            		</td>
            	</tr>
                <tr>
                    <th class="addhead">신청자</th>
                    <td>
                        <input type="text" />
                    </td>
                    <th class="addhead">관리번호</th>
                    <td >
                        <input type="text"/> 
                    </td>
                </tr>
            	<tr >
            		<th class='addhead'>납부정보</th>
            		<td colspan=3>
            			<input type="checkbox" name="chkBank" value="1" 
            				onclick="changeBank1();GlbCheckConvRadio('document.addFrm.chkBank','0');" 
            				id="chkBank_1"
            				style='margin-left: 100px;'>
            			<label for="chkBank_1">명의자와 동일</label>&nbsp;
            			<input type="checkbox" name="chkBank" value="2" 
            				onclick="changeBank2();GlbCheckConvRadio('document.addFrm.chkBank','1');" 
            				id="chkBank_2">
            			<label for="chkBank_2">신청자와 동일</label>
            		</td>
            	</tr>
          
                <tr>
                    <th class='addhead'>납부방법</th>
                    <td colspan="3" >
                        <input type="radio" name="bankMethod" value="bank" onclick="chkView();">자동이체&nbsp;&nbsp;
            			<input type="radio" name="bankMethod" value="card" onclick="chkView();">신용카드&nbsp;&nbsp;
            			<input type="radio" name="bankMethod" value="giro" onclick="chkView();">지로
                    </td>
                </tr>
                <tr>
                    <th class="addhead">예금주</th>
                    <td >
                        <input type="text"/>
                    </td>
                    <th class="addhead">관리번호</th>
                    <td >
                        <input type="text" name="bankSocno1" value="" class="input_text imed" 
                        	maxlength="6" onblur="numberCheck(this);" 
                        	onkeyup="if (this.value.length==6){document.addFrm.bankSocno2.focus();}"> 
			            
                    </td>
                </tr>
                <tr id="trView1">
                    <th class="addhead"><span id="bNameView1">은행명</span><span id="bNameView2" style="display:none;">카드명</span></th>
                    <td >
                        <input type="text"/>
                    </td>
                    <th class="addhead">
                    	<span id="bNumView1">계좌번호</span>
                    	<span id="bNumView2" style="display:none;">카드번호</span>
                   	</th>
                    <td >
                        <input type="text" />
                    </td>
                </tr>
                <tr id="trView2">
                    <th class="addhead">유효기간</th>
                    <td  colspan="3" >
                        <input type="text" name="bankYear" value="" id="bYView" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.bankYear.focus();}">년 /
                        <input type="text" name="bankMonth" value="" id="bMView" class="input_text imed" size="2" maxlength="2" onblur="numberCheck(this);">월
                    </td>
                </tr>
                
            </table>
            </td>
            <td>
            <table>
            <tr>
            <td>신규거래처등록</td>
            </tr>
             <tr>
            <td>거래처별송장</td>
            </tr>
             <tr>
            <td>거래종료(삭제)</td>
            </tr>
             <tr>
            <td>프린트</td>
            </tr>
             <tr>
            <td>닫기</td>
            </tr>
            </table>
            </td>
</tr>
</table>
<table id='subShopList'></table>
<div id='pager'></div>

<script>
 $(function(){

			 
	
	$('#subShopList').jqGrid({
		url:'${HOME}/shop/subShop/list.do',
		datatype:'json',
		mtype:'POST',
		colNames:['일련번호','등록일자','판매점코드','판매점','판매점ID','비밀번호','전화','팩스','주소',
		          '담당자','담당전화','담당이메일','메모','텔레콤'],
		colModel:[
		        {name:'shopSeq',index:'shopSeq',width:100,align:'center',hidden:true},   
		        {name:'shopRegDate',index:'shopRegDate',width:100,align:'center',hidden:true},  
		        {name:'shopCode',index:'shopCode',width:100,align:'center'},  
		        {name:'shopName',index:'shopName',width:100,align:'center'},  
		        {name:'shopId',index:'shopId',width:100,align:'center'},  
		        {name:'shopPw',index:'shopPw',width:100,align:'center',hidden:true},  
		        {name:'shopPhone',index:'shopPhone',width:100,align:'center'},  
		        {name:'shopFax',index:'shopFax',width:100,align:'center'},  
		        {name:'shopAddress',index:'shopAddress',width:100,align:'center'},  
		        {name:'chargerName',index:'chargerName',width:100,align:'center'},  
		        {name:'chargerPhone',index:'chargerPhone',width:100,align:'center'},  
		        {name:'chargerEmail',index:'chargerEmail',width:100,align:'center'},  
		        {name:'shopMemo',index:'shopMemo',width:100,align:'center'},  
		        {name:'shopTelecom',index:'shopTelecom',width:100,align:'center'}
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
            caption:'판매점 리스트',
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
            editUrl:'${HOME}/shop/subShop/edit.do'         
		
	}); 
 });
</script>

