<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:out value="${item.oycgSeq}"/> | <c:out value="${item.oycgName}"/> | <c:out value="${item.oycgDelNy}"/>

<a href="/infra/code/codeGroupForm2?oycdSeq=<c:out value="${item.oycdSeq}"/>">수정</a>
<a href="/infra/code/codeGroupForm?oycgSeq=<c:out value="${item.oycgSeq}"/>">등록</a>
