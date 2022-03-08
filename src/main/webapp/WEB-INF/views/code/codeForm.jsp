
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>




<select name="oycgSeq">
	<c:forEach items="${list}" var="rt" varStatus="status">
		<option value="${item.oycgSeq}"><c:out value="${item.oycgSeq}" />.
			<c:out value="${item.oycgName}" /></option>
	</c:forEach>
</select>

<form method="post" action="/infra/code/codeInst">

	<input type="text" name="oycdName" placeholder="이름"> <input
		type="text" name="oycdDelNy" placeholder="0000"> <input
		type="submit" value="제출">
</form>