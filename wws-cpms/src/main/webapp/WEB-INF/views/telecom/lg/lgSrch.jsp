<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
<!--
	.anySrch{border:1px solid gray;width:100%;}
	.anySrch tr{height:30px;}
	.anySrch td{border:1px solid red;}
-->
</style>
<%@ include file="lgFrm/lgSrchFrm.jsp" %>  
<table id='' class="anySrch tp_form1">
	<tbody>
		<tr>
			<td class="formhead1">ㆍ검색날짜</td>
			<td width="937" colspan="3" class="pdl7">
	            <select name="filterCode">
	    			<option value="1">접수일자</option>
	    		</select>
	            <input type="text" name="sDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.sDate);" readonly>&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif"  class="cshand" border="0"> 
	            ~ <input type="text" name="eDate" value="" size="10" class="input_text cshand imed"  readonly>&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif"  class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_today.gif"  class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_yesterday.gif"  class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_thisMonth.gif"  class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_lastMonth.gif"  class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_all.gif"  class="cshand" border="0" alt="새로고침">
			</td>
		</tr>
		<tr height="30">
			<td class="formhead1">ㆍ검색조건</td>
			<td colspan="3" class="pdl7">
				<select name="openCode">
					<option value="">::개통처::</option>
				</select>
				<select name="eventCode">
					<option value="">::판매유형::</option>
				</select>
				<select name="supportCode">
					<option value="">::고객사은품::</option>
				</select>
				<select name="modelCode" onchange="chgListModelCode();">
					<option value="">::신청모델::</option>
				</select>
				<select name="colorCode">
					<option value="">::색상::</option>
				</select>
				<select name="gaimCode">
					<option value="">::가입유형::</option>
				</select>
				<select name="feeCode">
					<option value="">::요금제::</option>
				</select>
				<select name="costCode">
					<option value="">::가입비::</option>
				</select>
				<select name="usimCode">
					<option value="">::유심카드::</option>
				</select>
				<select name="bugaCode2">
					<option value="">::부가서비스::</option>
				</select>
				<select name="contractCode">
					<option value="">::약정사항::</option>
				</select>
			</td>
		</tr>
		<tr height="20">
			<td class="formhead1" rowspan="2">ㆍ진행상태</td>
			<td colspan="3" class="pdl7">
			   
			</td>
		</tr>
		<tr height="20">
	    	<td class="tp_oplist list0 pdl7">
	
	    	</td>
		</tr>
		<tr height="20">
			<td class="formhead1">ㆍ개통상태</td>
			<td colspan="3" class="pdl7">
	
			</td>
		</tr>
		<tr height="20">
			<td class="formhead1">ㆍ취소상태</td>
			<td colspan="3" class="pdl7">
			    
	
			</td>
		</tr>
		<tr height="30">
			
			<td class="formhead1">ㆍ담당부서</td>
			<td colspan="2" class="pdl7">
	             <select name="fraCode" onchange="chgfrListCode();">
	             	<option value="">::총판그룹::</option>
	             </select>
	             <select name="branchCode" onchange="chgbrListCode();">
	             	<option value="">:::지사명:::</option>
	             </select>
	             <select name="teCode" onchange="chgteListCode();">
	             	<option value="">:::팀명:::</option>
	             </select>
	             <select name="counselorCode">
	             	<option value="">:::상담원:::</option>
	             </select>
			</td>
			<td align="right">
	            Page
	            <select name="pagesize" onchange="document.schFrm.submit();">
	           </select>
			</td>
		</tr>
	</tbody>
</table>