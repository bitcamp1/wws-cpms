<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id='deliverySrch'>
	<tr>
		<td colspan="2">
			<input type="text"/>
			<input type="button" value=" 검 색 " class="button04">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value=" 업로드 " class="button06">
		</td>
	</tr>
	<tr>
		<td class="formhead1">ㆍ검색필드</td>
		<td width="937" colspan="5" style="padding:0 0 0 7px;">
			<select name="sitem">
	            <option value="2" selected>명의자명</option>
            </select>
            <select name="modelCode" onchange="document.schFrm.submit();">
	    		<option value="">::모델명::</option>
    		</select>
		</td>
	</tr>
		<tr height="30">
		<td class="formhead1">ㆍ개통처</td>
		<td style="padding:0 0 0 10px;" colspan="2">
		    <input type="radio" name="openCode" value="WKRE90907790" onclick="document.schFrm.submit();">S코드
			<input type="radio" name="openCode" value="WKRE90907791" onclick="document.schFrm.submit();">Y코드
			<input type="radio" onclick="resetState(2);"><span style="color:red;">상태값 초기화</span>&nbsp;&nbsp;
		</td>
	</tr>
</table>
<script>
	$(function(){
		$('#deliverySrch').addClass('anySrch').addClass('tp_form1');
	});
</script>