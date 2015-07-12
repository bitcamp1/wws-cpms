<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table id='custContent'>
		<tr>
			
			<th width="60">등록일자</th>
			<th width="80">판매유형</th>
			<th>총판</th>
			<th>명의자(전화번호)</th>
			<th>주민번호</th>
			<th>신청모델/색상</th>
			<th  width="80">가입유형</th>
			<th width="100">요금제/할부원금</th>
			<th width="100">진행상태</th>
			<th width="70">개통여부</th>
			<th width="70">취소여부</th>
			<th width="60">CIA</th>
			<th>수정/삭제</th>
		</tr>
	<c:forEach var='list' items='${list}'>

	<tr>	
	
		<td><fmt:formatDate value="${list.custRegdate }" pattern="yyyy-MM-dd"/></td>
		<td>${list.saleType}</td>
		<td>${list.shopName}</td>
		<td>${list.custName}( ${list.custPhone})</td>
		<td>${list.custNum}</td>
		<td>${list.phoneModel}/${list.phoneColor}</td> 
		<td>${list.joinType}</td>
		<td>${list.tariffName}/${list.totPrice}</td> <!-- 할부원금 -->
		<td>${list.progStat}</td>
		<td>${list.openYn}</td>  <!-- 개통여부 -->
		<td>${list.cancleYn}</td>  <!-- 취소여부 -->
		<td>${list.cia}</td>
	 	<td> 
			<a href='/cust_view.do?id=${list.custSeq}' 
			class='modBtn'>수정</a> 
			/ 
			<a href='/cust_delete.do?id=${list.custSeq}' 
			class='delBtn'>삭제</a>
		</td>
	</tr>
	</c:forEach>
</table>
	
	<script>
	$(function(){
		$('#custContent').addClass('anyLst').addClass('tp_list1');
		$('#custContent th').addClass('listhead1');
		$('#custContent tr:eq(0) td:eq(0)').addClass('subtitle_subject');
		$('#custContent tr:eq(0) td:eq(2)').addClass('subtitle_etc');
		$('#custContent tr:eq(1) th').addClass('listhead1');
		$('#custContent tr:eq(2) th').addClass('listhead1');
		$('#custContent td').css('border','1px solid #ddd').css('text-align','center');


	});
	
	</script>