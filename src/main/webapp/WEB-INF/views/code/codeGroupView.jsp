<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<a href="/infra/code/codeGroupView?oycgSeq=<c:out value="${item.oycgSeq}"/>"><c:out value="${item.oycgName}"/></a>
|
<c:out value="${item.oycgDelNy}" />
<br>