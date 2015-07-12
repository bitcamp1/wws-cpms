<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.anySrch{border:1px solid gray;width:100%;}
	.anySrch tr{height:30px;}
</style>

<table id='srchCredit' class='anySrch tp_form1'>
	<tr>
		<td class="formhead1">ㆍ검색날짜</td>
		<td class="listhead0 pdl7" colspan="3">
		    <input type="text" name="sDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.sDate);" readonly>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif"  onclick="Calendar_D(schFrm.sDate);"class="cshand"  border="0"> ~
		    <input type="text" name="eDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.eDate);" readonly>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif"  onclick="Calendar_D(schFrm.eDate);"class="cshand"  border="0">
				<img src="http://smtech.kradmin.co.kr/images/icon_date_today.gif"  onclick="insertDate('2013-10-23','2013-10-23');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_yesterday.gif"  onclick="insertDate('2013-10-22','2013-10-22');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_thisMonth.gif"  onclick="insertDate('2013-10-01','2013-10-31');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_lastMonth.gif"  onclick="insertDate('2013-09-01','2013-09-30');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_all.gif"  onclick="location.href='./?prgid=S110';" class="cshand" border="0" alt="새로고침">
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ담당부서</td>
		<td class="listhead0 pdl7">
            
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
		<td align="right" class="listhead0" style='border-right:1px solid gray;'>
            Page
            <select name="pagesize" onchange="document.schFrm.submit();">
	            <option value="10" >  15</option>
	            <option value="20" selected>  30</option>
	            <option value="50" >  50</option>
	            <option value="100" > 100</option>
            </select>
		</td>
	</tr>
	<tr>
		<td class="formhead1">ㆍ검색조건</td>
		<td>
		<select name="openCode" onchange="document.schFrm.submit();">
	    		<option value="">::개통처::</option>
	    		<option value='WKRE90907790'>S코드</option>
				<option value='WKRE90907791'>Y코드</option>
    		</select>
    		
            <select name="eventCode" onchange="document.schFrm.submit();">
			    <option value="" selected>::판매유형::</option>
			    <option value='1001'>오프라인</option>
				<option value='1002'>T-gate</option>
		    </select>
            <select name="tongsinSa" onchange="document.schFrm.submit();">
			    <option value=''>::통신사::</option><option value='1002' style='color:#ff0000;'>SKT</option>
				<option value='1003' style='color:#0000ff;'>KT</option>
				<option value='1004' style='color:#ff00ff;'>LGU+</option>
				<option value='1005' style='color:#cc99ff;'>MVNO</option>
		    </select>
	    </td>
	</tr>
</table>