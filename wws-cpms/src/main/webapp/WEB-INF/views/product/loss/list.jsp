<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
	.anyLst{width:100%;border:1px solid gray;}
	.anyLst th{border:1px solid gray;}
	.anyLst tr{height:15px; font-size: 12px;}
</style>  
<table id='remList' class='anyLst tp_list1'>
	<tr style='height:30px;'>
		<td class="subtitle_subject" style='height:20px;' colspan="8">기타관리</td>
	</tr>
	<tr>
		<th class="listhead1">공기계판매등록</th>
		<th class="listhead1">공기계판매현황</th>
		<th class="listhead1">공기계출고로그</th>
		<th class="listhead1">불량등록</th>
		<th class="listhead1">불량현황</th>
		<th class="listhead1">분실재고등록</th>
		<th class="listhead1">분실재고현황</th>
	</tr>
<c:forEach var='crdLst' items='${list}'>
	<tr>	
		<td>${list.gongphone_reg}</td>
		<td>${list.gongphone_stat}</td>
		<td>${list.gongphone_ex}</td>
		<td>${list.poorphone_reg}</td>
		<td>${list.poorphone_stat}</td>
		<td>${list.lossphone_reg}</td>
		<td>${list.lossphone_stat}</td>
		<td><fmt:formatDate value="${list.remRegdate }" pattern="yyyy-MM-dd"/></td>
		<td> 
			<a href='/rem_list.do?id=${list.remSeq}' 
			class='editBtn'>수정</a> 
			/ 
			<a href='/rem_delete.do?id=${list.remSeq}' 
			class='delBtn'>삭제</a>
		</td>
	</tr>
	</c:forEach>
</table>
	<c:if test="${currentPage != 1 }">
		<a href="/rem_list.do?pageNo=${currentPage - 1}">[PREV]</a>
	</c:if>
	<c:forEach begin="1" end="${noOfPages }" var="i">
		<c:choose>
			<c:when test="${currentPage eq i }">
				${i}
			</c:when>
			<c:otherwise>
				<a href="/rem_list.do?pageNo=${i}">${i }</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${currentPage lt noOfPages }">
		<a href="/rem_list.do?pageNo=${currentPage+1}">[NEXT]</a>
	</c:if>
	<script>
	$(function(){
		$('#remList').addClass('anyLst').addClass('tp_list1');
		$('#remList th').addClass('listhead1');
		$('#remList tr:eq(0) td:eq(0)').addClass('subtitle_subject');
		$('#remList tr:eq(0) td:eq(2)').addClass('subtitle_etc');
		$('#remList tr:eq(1) th').addClass('listhead1');
		$('#remList tr:eq(2) th').addClass('listhead1');
		$('#remList td').css('border','1px solid #ddd').css('text-align','center');


	});
	
	</script>