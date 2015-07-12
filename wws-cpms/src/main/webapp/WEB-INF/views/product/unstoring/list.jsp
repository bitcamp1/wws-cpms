<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <style>
    	.anyLst{width:100%;border:1px solid gray;}
		.anyLst th{border:1px solid gray;background-color: #ddd;}
		.anyLst tr{height:15px; font-size: 12px;}
    </style>
<table id='unstorList' class='anyLst tp_list1'>
	<tr height="26">
		<td class="subtitle_subject" style='height:20px;' colspan="8">출고관리</td>
	</tr>
	<tr>
		<th class="listhead1">출고등록</th>
		<th class="listhead1">출고등록현황</th>
		<th class="listhead1">츨고로그</th>
		<th class="listhead1">거래명세서등록(USIM)</th>
		<th class="listhead1">거래명세서현황</th>
		<th class="listhead1">재고이동</th>
		<th class="listhead1">기기회수등록</th>
		<th class="listhead1">기기회수현황</th>
		<th class="listhead1">기기회수명세서현황</th>
	</tr>
	</table>
		<c:if test="${currentPage != 1 }">
		<a href="/unstor_list.do?pageNo=${currentPage - 1}">[PREV]</a>
	</c:if>
	<c:forEach begin="1" end="${noOfPages }" var="i">
		<c:choose>
			<c:when test="${currentPage eq i }">
				${i}
			</c:when>
			<c:otherwise>
				<a href="/unstor_list.do?pageNo=${i}">${i }</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${currentPage lt noOfPages }">
		<a href="/unstor_list.do?pageNo=${currentPage+1}">[NEXT]</a>
	</c:if>
	<script>
	$(function(){
		$('#unstorList').addClass('anyLst').addClass('tp_list1');
		$('#unstorList th').addClass('listhead1');
		$('#unstorList tr:eq(0) td:eq(0)').addClass('subtitle_subject');
		$('#unstorList tr:eq(0) td:eq(2)').addClass('subtitle_etc');
		$('#unstorList tr:eq(1) th').addClass('listhead1');
		$('#unstorList tr:eq(2) th').addClass('listhead1');
		$('#unstorList td').css('border','1px solid #ddd').css('text-align','center');


	});
	
	</script>