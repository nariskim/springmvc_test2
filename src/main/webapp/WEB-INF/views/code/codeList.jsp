<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>




<form id="" name="" method="get" action="/infra/code/codeList">
<select name="shOycgSeq">
	<option value="">::코드그룹::
	<c:forEach items="${listCodeGroup}" var="item" varStatus="status">
	<option value="<c:out value="${item.oycgSeq }"/>"> <c:out value="${item.oycgName}"/>
	</c:forEach>
</select>
<input type="submit" name="search">
</form>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">

			<c:out value="${item.oycdSeq}" /> | <c:out value="${item.oycgSeq}" /> | <c:out
				value="${item.oycdDelNy}" /> | <a
				href="/infra/code/codeView?oycdSeq=<c:out value="${item.oycdSeq}"/>"><c:out
					value="${item.oycdName}" /></a> | <c:out value="${item.oycdDelNy}" />
			<br>



		</c:forEach>
	</c:otherwise>
</c:choose>


