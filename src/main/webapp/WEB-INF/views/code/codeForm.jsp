
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>



<form method="post" action="/infra/code/codeInst">
	<select name="oycgSeq">
		<c:forEach items="${list}" var="item" varStatus="status">
			<option value="<c:out value="${item.oycgSeq}"/>"><c:out
					value="${item.oycgName}" />(
				<c:out value="${item.oycgSeq}" />)
			</option>
		</c:forEach>
	</select>
	
	<input type="text" name="oycdName" placeholder="이름"> <input
		type="hidden" name="oycdDelNy" placeholder="0"> <input
		type="submit" value="제출">
</form>