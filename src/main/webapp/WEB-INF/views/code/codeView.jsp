
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<c:out value="${item.oycdSeq}"/> | <c:out value="${item.oycdName}"/> | <c:out value="${item.oycdDelNy}"/> <br>

<a href="/infra/code/codeForm2?oycdSeq=<c:out value="${item.oycdSeq}"/>">수정</a>
<a href="/infra/code/codeForm?oycgSeq=<c:out value="${item.oycgSeq}"/>">등록</a>

