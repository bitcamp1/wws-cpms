<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/body/up.jsp" %>
<style>
	.anyLst{width:100%;border:1px solid gray;}
	.anyLst th{border:1px solid gray;}
	.anyLst tr{height:15px; font-size: 12px;}
</style>  
<table id='' class='anyLst tp_list1'>
	<tr style='height:30px;'>
		<td class="subtitle_subject" style='height:20px;' colspan="8">SKT 고객리스트</td>
	</tr>
	<tr>
		<th class="listhead1" width="30"></th>
			<th class="listhead1" width="40">번호</th>
			<th class="listhead1" width="60">등록일자</th>
			<th class="listhead1" width="80">판매유형</th>
			<th class="listhead1">총판</th>
			<th class="listhead1">명의자(전화번호)</th>
			<th class="listhead1">주민번호</th>
			<th class="listhead1">신청모델/색상</th>
			<th class="listhead1" width="80">가입유형</th>
			<th class="listhead1" width="100">요금제/할부원금</th>
			<th class="listhead1" width="100">진행상태</th>
			<th class="listhead1" width="70">개통여부</th>
			<th class="listhead1" width="70">취소여부</th>
			<th class="listhead1" width="60">CIA</th>
	</tr>
<c:forEach var='crdLst' items='${crdLst}'>
	<tr>	
		<td>${crdLst.crdSeq}</td>
		<td>${crdLst.}</td>
		<td><fmt:formatDate value="${list.rgstDate }" pattern="yyyy-MM-dd"/></td>
		<td> 
			<a href='${pageContext.request.contextPath }/contract/detail.do?idx=${list.ctrIdx}' 
			class='editBtn'>수정</a> 
			/ 
			<a href='${pageContext.request.contextPath }/contract/delete.do?idx=${list.ctrIdx}' 
			class='delBtn'>삭제</a>
		</td>
	</tr>
	</c:forEach>
</table>
	<c:if test="${currentPage != 1 }">
		<a href="${pageContext.request.contextPath }/contract/list.do?pageNo=${currentPage - 1}">[PREV]</a>
	</c:if>
	<c:forEach begin="1" end="${noOfPages }" var="i">
		<c:choose>
			<c:when test="${currentPage eq i }">
				${i}
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath }/contract/list.do?pageNo=${i}">${i }</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${currentPage lt noOfPages }">
		<a href="${pageContext.request.contextPath }/contract/list.do?pageNo=${currentPage+1}">[NEXT]</a>
	</c:if>