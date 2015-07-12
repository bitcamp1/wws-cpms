<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div id='dlineList'>
		<span>일 업체별 마진구조</span>
			<input type='button' value='일별보기'>&nbsp;&nbsp;&nbsp;
			<input type='button' value='월별보기'/>
		
	</div>
	<%@include file="list.jsp" %>
	<%-- <tr>
		<th rowspan=2 style='width:10%;'>업체</th>
		<th colspan=5 style='width:40%;'>개통현황</th>
		<th rowspan=2 style='width:20%'>원정책<br/>(고APRU포함)</th>
		<th rowspan=2 style='width:100px'>리베이트<br/>(고APRU포함)</th>
		<th rowspan=2 style='width:10%'>수수료</th>
		<th rowspan=2 style='width:10%'>마진</th>
	</tr>
	<tr>
		<th>신규/에이징</th>
		<th>MNP</th>
		<th>착한기변</th>
		<th>보상기변</th>
		<th>총계</th>
		
	</tr>
<c:forEach var='ddlLst' items='${list}'>
	<tr>	
		<td>${list.dlineSeq}</td>
		<td>${list.shopName}</td>
		<td>${list.openNew}</td>
		<td>${list.openMnp}</td>
		<td>${list.openChange}</td>
		<td>${list.openReward}</td>
		<td>${list.openNew + list.openMnp + list.openChange + list.openReward}</td>
		<td>${list.policy}</td>
		<td>${list.rebate}</td>
		<td>${list.commission}</td>
		<td>${list.margin}</td>
		
		<td> 
			<a href='/dline_view.do?id=${list.dlineSeq}' 
			class='editBtn'>수정</a> 
			/ 
			<a href='/dline_delete.do?id=${list.dlineSeq}' 
			class='delBtn'>삭제</a>
		</td>
	</tr>
	</c:forEach>
</table>
	<c:if test="${currentPage != 1 }">
		<a href="/dline_list.do?pageNo=${currentPage - 1}">[PREV]</a>
	</c:if>
	<c:forEach begin="1" end="${noOfPages }" var="i">
		<c:choose>
			<c:when test="${currentPage eq i }">
				${i}
			</c:when>
			<c:otherwise>
				<a href="/dline_list.do?pageNo=${i}">${i }</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${currentPage lt noOfPages }">
		<a href="/deadline_list.do?pageNo=${currentPage+1}">[NEXT]</a>
	</c:if> --%>
	<script>
	$(function(){
		$('#dlineList').addClass('anyLst').addClass('tp_list1');
		$('#dlineList tr:eq(0) td:eq(0)').addClass('subtitle_subject');
		$('#dlineList tr:eq(0) td:eq(2)').addClass('subtitle_etc');
		$('#dlineList tr:eq(1) th').addClass('listhead1');
		$('#dlineList tr:eq(2) th').addClass('listhead1');
	});
	
	</script>