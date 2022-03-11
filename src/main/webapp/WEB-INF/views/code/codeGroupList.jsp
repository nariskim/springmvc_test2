<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form id="" name="" method="get" action="/infra/code/codeGroupList">

<select name="shOycgDelNy">
<option value="">::삭제여부::
<option value="1">Y
<option value="0">N
</select>

이름 : <input type="text" name="shOycgName">
<input type ="submit" name="search">
</form>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<c:out value="${item.oycgSeq}"/> | <a href="/infra/code/codeGroupView?oycgSeq=${item.oycgSeq}"><c:out value="${item.oycgName}"/></a> | <c:out value="${item.oycgDelNy}"/> <br>
		
		</c:forEach>
	</c:otherwise>
</c:choose>	 

