<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../common/header.jsp" %> 

<script>

//엑셀생성
function xlsField(Str)
{
    var frm = document.execlFrm;
    var actUrl = "?prgid="+ Str;
    frm.prgid.value = Str;
    frm.action = actUrl;
    frm.method = "get";
    frm.submit();
}

function doBlink() {
var blink = document.all.tags("BLINK")
for (var i=0; i < blink.length; i++)
blink[i].style.visibility = blink[i].style.visibility == "" ? "hidden" : ""
}
function startBlink() {
if (document.all)
setInterval("doBlink()",500)
}
//-->
</script>

</head>

<body bgcolor="white">
<h1 class='pop_tit'>개인정보 등록</h1>
<form id='registCustForm' onsubmit='return false;'>
<table style='width:100% '>
    <tr>
        <td style='width:450px' valign='top'>
            <table class="pop_tbl" >
                <tr>
            		<th class="addhead">판매처</th>
            		<td >
            			<input type="text" name="shopName" id='shopName'/>
            		</td>
            		<th class="addhead">담당자</th>
            			
            		<td >
            			<input type="text" name="damdang" value="" class="input_text imea" size="20"/>
            		</td>
            	</tr>

                <tr>
                    <th height="25"  class="addhead">등록일자</th>
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
                    <th class="addhead">판매유형</th>
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
        </td> <!-- 왼쪽프레임 끝 -->
        <td style='width:450px' valign='top'>
           
            <table class="pop_tbl" >
                <tr>
                	<th class='addhead'>
                		휴대폰정보
               		</th>
                    <td colspan=3>
                    	<input type='radio' name='TongSinView' value='C11' onclick="radio_ImgView('C11');">SKT &nbsp;
                    	<input type='radio' name='TongSinView' value='C12' onclick="radio_ImgView('C12');">KT &nbsp;
                    	<input type='radio' name='TongSinView' value='C13' onclick="radio_ImgView('C13');">LG &nbsp;
                    </td>
                </tr>
                 <tr>
                	<th class="addhead">개통번호</th>
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
                <tr>
                    <th class="addhead">신청모델</th>
                    <td style='width:160px;'>
                        <select name="modelCode" onchange="chgModelCode();" style='width:120px;'>
                		<option value="" >::모델별::</option>
                		</select>
                    </td>
                    <th class="addhead">출고색상</th>
                    <td>
                		<select name="phoneColor" id='phoneColor' style='width:120px;'>
                			<option value="white">화이트</option>
                			<option value="black">블랙</option>
                			<option value="pink">핑크</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    
                    <th class="addhead" >가입유형</th>
                    <td  >
                        <select name="gaimCode" onchange="chgOpenReset();" style='width:120px;'>
                		<option value="">::가입유형::</option>
                		</select>
                    </td>
                    
                    <th height="25"  class="addhead">인증방법</th>
                    <td  >
                		<select name="cerCode" style='width:120px;'>
                			<option value="">::인증방법::</option>
                		</select>
                    </td>
                   
                </tr>
                <tr>
                	 <th height="25"  class="addhead">????</th>
                    <td  >
                        <select name="mnpCode" style='width:120px;'>
                		<option value="">??????</option>
                		</select>
                    </td>
                     <th height="25"  class="addhead">유심카드</th>
                    <td  >
                		<select name="usimCode" style='width:120px;'>
                			<option value="">::유심카드::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <th class="addhead">보상등급</th>
                    <td>
                		<select name="cerCode" style='width:120px;'>
                			<option value="">::보상등급::</option>
                		</select>
                    </td>
                    <th class="addhead" >요금제</th>
                    <td >
                		<select name="feeCode" onchange="chgMoney();" style='width:120px;'>
                			<option value="">::요금제::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <th class="addhead" >할인유형</th>
                    <td >
                		<select name="bugaCode" style='width:120px;'>
                			<option value="">::부가::</option>
                		</select>
                    </td>
                    <th class="addhead" >부가서비스</th>
                    <td >
                		<select name="bugaCode2" style='width:120px;'>
                			<option value="">::부가2::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <th class="addhead" >가입비</th>
                    <td >
                        <select name="costCode" style='width:120px;'>
                			<option value="">::가입비::</option>
                		</select>
                    </td>
                     <th height="25"  class="addhead">약정사항</th>
                    <td  >
                		<select name="contractCode" style='width:120px;'>
	                		<option value="">::약정사항::</option>
	                		<option value='1001'>24개월할부</option>
							<option value='1002'>30개월할부</option>
							<option value='1003'>36개월할부</option>
                		</select>
                    </td>
                    
                </tr>
                <tr>
                    <th class="addhead">USIM번호</th>
                    <td  >
                		<input type="text" name="usimNumber" size=20/>
                    </td>
                    <th class="addhead">판매코드</th>
                    <td style='width:160px;'>
                       <input type="text" name="" value="" id=""/>
                    </td>
                </tr>
                 <tr>
                 	 <th height="25"  class="addhead">MNP인증</th>
                    <td  >
                		<input type="text" name="mnpField" />
                    </td>
                    <th class="addhead">할부개월</th>
                    <td style='width:160px;'>
                       <input type="text" name="" value="" id=""/>
                    </td>
                </tr>
              
                <tr>
                    <th height="25"  class="addhead">개통일련번호</th>
                    <td  >
                        <input type="text" name="serialNumber" value=""/>
                    </td>
                    <th height="25"  class="addhead">할부금액</th>
                    <td  >
                        <input type="text" name="feeMoney" />
                    </td>
                </tr>
                <tr id="hopeTR" style="display:none;">
                    <th height="25"  class="addhead">희망번호</th>
                    <td  colspan="3" >
                        <input type="text" name="hopeCell1" value="" onblur="numberCheck(this);"/>
			            <input type="text" name="hopeCell2" value="" onblur="numberCheck(this);"/>
			            <input type="text" name="hopeCell3" value="" onblur="numberCheck(this);"/>
                    </td>
                </tr>
                <tr>
                    
                    <th height="25"  class="addhead">발급일자</th>
                    <td  >
                		<input type="text" name="cerField" />
                    </td>
                    <th class="addhead">구)단말기</th>
                    <td >
                		<input type="text" name="" />
                    </td>
                </tr>
                <tr>
                    <th height="25"  class="addhead">고객사은품</th>
                    <td  >
                       <input type="text" name="" />
                    </td>
                     <th height="25"  class="addhead">미비서류</th>
                    <td  >
                        <input type="text" name="" />
                    </td>
                </tr>
                 <tr >
                    <th class="addhead">교품 USIM번호</th>
                    <td  >
                		<input type="text" name="usimNumber" size=20/>
                    </td>
                    <th class="addhead">교품개통 일련번호</th>
                    <td  >
                		<input type="text" name="usimNumber" size=20/>
                    </td>
                   
                </tr>
                 <tr>
                    <th  class="addhead">메모</th>
                    <td  colspan="3" >
                        <textarea name="user_memo" style="width:98%;height:50px;"></textarea>
                    </td>
                </tr>
                <tr >
			        <td colspan=4 style='height:80px;'>
			        <span id="btn_submit" style='margin:150px;'>
			            <input type="submit" value=" 저 장 " style="width:80px;height:40px;" class="cshand" id='inputCustDataBtn'>&nbsp;
			            <input type="button" value=" 초기화 " style="width:80px;height:40px;" class="cshand" onclick="location.href='?prgid=C1101&gNo=';">&nbsp;
			            <input type="button" value=" 닫기 " style="width:80px;height:40px;" class="cshand" onclick="self.close();">
			        </span><span id="btn_view" style="display:none;"></span>
			        </td>
			    </tr>
            </table>
        </td>
    </tr>
</table>
</form>
</body>
<script>
	$(function(){
		$('#registCustForm').on('submit',function(e){
			e.preventDefault();
			$.ajax({
				url:'${HOME}/cust/inputCustData.do',
				type:'POST',
				cache:false,
				dataType:'json',
				data:$(this).serializeArray(),
				success:function(data){
					alert('성공');
				},
				error:function(e){
					alert('에러');
				}
				
			});
		});
		
	});
</script>

</html>
<!-- <iframe width="100%" height="100%" name="dummyMain" id="dummyMain" src="about:blank" style="display:none;"></iframe>
<iframe width="0" height="0" border="0" frameborder="0" src="/lib/session_update.asp" style="display:none;"></iframe> -->
