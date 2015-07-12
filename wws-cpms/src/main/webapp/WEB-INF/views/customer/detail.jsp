<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../common/header.jsp" %> 



<body bgcolor="white">
<h1 class='pop_tit'>개인정보 보기</h1>
<table style='width:100% '>
    <tr>
        <td style='width:450px' valign='top'>
            <table class="pop_tbl" >
                <tr>
            		<th class="addhead">판매점</th>
            		<td >
            			${data.shopName}
            		</td>
            		<th class="addhead">담당자</th>
            			
            		<td >
            			
            		</td>
            	</tr>

                <tr>
                    <th height="25"  class="addhead">등록일자</th>
                    <td  >
                        ${data.custRegDate }
                    </td>
                    <th  class="addhead">기존통신사</th>
                    <td  >
                        ${data.o_telecom}
                    </td>
                </tr>
                <tr>
                    <th class="addhead">판매유형</th>
                    <td >
	                   ${data.custName}
                    </td>
                    <th  class="addhead">명의자</th>
                    <td  >
                       ${data.custName}
                    </td>
                </tr>
                <tr>
                    <th class="addhead">관리번호</th>
                    <td>
                        ${data.custNum}
			            
                    </td>
                    <th class="addhead">개통처</th>
            		<td>
            			${data.shopName}
            		</td>
                    
                </tr>
                <tr>
                	<th class="addhead">휴대전화번호</th>
                    <td colspan=3>
                    ${data.custPhone}
                    </td>
                </tr>
                <tr height="30">
            		
            		<th class="addhead">비상연락처</th>
            		<td colspan=3>
            		${data.custTelnum}
            		</td>
            	</tr>
                <tr>
                    <th  class="addhead">배송주소</th>
                    <td  colspan="3" >
                        ${data.d_doCity} ${data.d_siGuGun} ${data.doroName} ${data.jusoDetail} ${data.zipCode}
                    </td>
                </tr>
                 <tr>
                	<th class="addhead">배송방법</th>
                    <td colspan=3>
                        ${data.deliType}
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
                        ${data.o_applier}
                    </td>
                    <th class="addhead">관리번호</th>
                    <td >
                        ${data.custNum}
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
                        ${data.payType}
                    </td>
                </tr>
                <tr>
                    <th class="addhead">예금주</th>
                    <td >
                        ${data.accOwner}
                    </td>
                    <th class="addhead">관리번호</th>
                    <td >
                       ${data.accOwnerCustNum}
                    </td>
                </tr>
                <tr id="trView1">
                    <th class="addhead"><span id="bNameView1">은행명</span><span id="bNameView2" style="display:none;">카드명</span></th>
                    <td >
                        ${data.bankName} ${data.cardSa}
                    </td>
                    <th class="addhead">
                    	<span id="bNumView1">계좌번호</span>
                    	<span id="bNumView2" style="display:none;">카드번호</span>
                   	</th>
                    <td >
                        ${data.accNum} <br/>${data.cardNum}
                    </td>
                </tr>
                <tr id="trView2">
                    <th class="addhead">유효기간</th>
                    <td  colspan="3" >
                        ${data.cardYYmm}
                    </td>
                </tr>
                 <tr>
                    <th  class="addhead">메모</th>
                    <td  colspan="3" >
                        ${data.o_memo}
                    </td>
                </tr>
            </table>
        </td> <!-- 왼쪽프레임 끝 -->
        <td style='width:450px' valign='top'>
           
            <table class="pop_tbl" >
                <tr>
                	<th class='addhead'>
                		통신사
               		</th>
                    <td colspan=3>
                    	${data.telecom}
                    </td>
                </tr>
                 <tr>
                	<th class="addhead">개통번호</th>
                    <td colspan=3>
                        ${data.custPhone}
                    </td>
                </tr>
                <tr>
                    <th class="addhead">신청모델</th>
                    <td style='width:160px;'>
                       ${data.phoneModel}
                    </td>
                    <th class="addhead">출고색상</th>
                    <td>
                		${data.phoneColor}
                    </td>
                </tr>
                <tr>
                    
                    <th class="addhead">보상등급</th>
                    <td>
                		${data.bosangLevel}
                    </td>
                    <th height="25"  class="addhead">인증방법</th>
                    <td  >
                		${data.mnpInj }
                    </td>
                   
                </tr>
                <tr>
                	 <th height="25"  class="addhead">MNP인증</th>
                    <td  >
                        ${data.mnpInj}
                    </td>
                     <th height="25"  class="addhead">유심카드</th>
                    <td  >
                		${data.usimModel}
                    </td>
                </tr>
                <tr>
                    <th class="addhead" >가입유형</th>
                    <td  >
                        ${data.joinType}
                    </td>
                    <th class="addhead" >요금제</th>
                    <td >
                		${data.tffName}
                    </td>
                </tr>
                <tr>
                    <th class="addhead" >할인유형</th>
                    <td >
                		${data.halinType}
                    </td>
                    <th class="addhead" >부가서비스</th>
                    <td >
                		${data.bugaService}
                    </td>
                </tr>
                <tr>
                    <th class="addhead" >가입비</th>
                    <td >
                        ${data.joinFee}
                    </td>
                     <th height="25"  class="addhead">약정사항</th>
                    <td  >
                		${data.yakjung}
                    </td>
                    
                    
                </tr>
                <tr>
                    <th class="addhead">USIM번호</th>
                    <td  >
                		${data.usimNum}
                    </td>
                   <%--  <th class="addhead">판매코드(정책)</th>
                    <td style='width:160px;'>
                       ${data.telecom}
                    </td> --%>
                </tr>
                 <tr>
                 	 <th height="25"  class="addhead">인증번호</th>
                    <td  >
                		${data.o_injNum}
                    </td>
                    <th class="addhead">할부개월</th>
                    <td style='width:160px;'>
                       ${data.halbuWol}
                    </td>
                </tr>
              
                <tr>
                    <th height="25"  class="addhead">개통일련번호</th>
                    <td  >
                        ${data.serialNum}
                    </td>
                    <th height="25"  class="addhead">할부금액</th>
                    <td  >
                       ${data.halbuKumak}
                    </td>
                </tr>
                <tr id="hopeTR" style="display:none;">
                    <th height="25"  class="addhead">희망번호</th>
                    <td  colspan="3" >
                       ${data.o_hopeNum}
                    </td>
                </tr>
                <tr>
                    
                    <th height="25"  class="addhead">발급일자</th>
                    <td  >
                		${data.o_telecom}
                    </td>
                    <th class="addhead">구)단말기</th>
                    <td >
                		${data.o_telecom}
                    </td>
                </tr>
                <tr>
                    <th height="25"  class="addhead">고객사은품</th>
                    <td  >
                       ${data.o_telecom}
                    </td>
                    <th height="25"  class="addhead">금액</th>
                    <td  >
                         ${data.o_telecom}
                    </td>
                </tr>
                <tr>
                    <th height="25"  class="addhead">미비서류</th>
                    <td  >
                         ${data.o_mibiDoc}
                    </td>
                    <th height="25"  class="addhead">인증값</th>
                    <td  >
                         ${data.o_injNum}
                    </td>
                </tr>
                 <tr >
                    <th class="addhead">교품 USIM번호</th>
                    <td  >
                		${data.o_telecom}
                    </td>
                    <th class="addhead">교품개통 일련번호</th>
                    <td  >
                		${data.o_telecom}
                    </td>
                   
                </tr>
                <tr >
                <th class="addhead" rowspan=2>판매코드(정책)</th>
                    <td style='width:160px;' rowspan=2>
                       ${data.telecom}
                    </td>
               </tr>
                <tr>
			        <td colspan=4 style='height:80px;'>
			        <span id="btn_submit" style='margin:150px;'>
			            <input type="button" value=" 저 장 " style="width:80px;height:40px;" class="cshand" onclick="checkMemsubmit('C110');">&nbsp;
			            <input type="button" value=" 초기화 " style="width:80px;height:40px;" class="cshand" onclick="location.href='?prgid=C1101&gNo=';">&nbsp;
			            <input type="button" value=" 닫기 " style="width:80px;height:40px;" class="cshand" onclick="self.close();">
			        </span><span id="btn_view" style="display:none;"></span>
			        </td>
			    </tr>
            </table>
        </td>
    </tr>
</table>
