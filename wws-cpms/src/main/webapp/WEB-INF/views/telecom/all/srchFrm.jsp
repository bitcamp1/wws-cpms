<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.anySrchFrm{width:100%;border:1px solid gray;}
	.blueFont{color:#366CB3; font-size: 12px;font-weight: bold;}
</style>
<table id='' class='anySrchFrm'>
	<tbody>
		<tr height="26">
			<td class="pdt3" valign="bottom">
			<span class='blueFont' > [고객] 검색 | 등록</span>
			    <select name="sitem">
		            <option value="1">신청자명</option>
	            </select>
	            <input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {document.schFrm.submit();}">
	            <input type="button" id='' class="cshand button06"  value=" 검 색 " >
	            <input type="button" id='regist' class="cshand button06"  value=" 신규등록 ">
			</td>
		</tr>
	</tbody>
</table>
