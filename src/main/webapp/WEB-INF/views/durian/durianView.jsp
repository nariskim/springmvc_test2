<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<c:out value="${item.oymbSeq}"/> | <c:out value="${item.oymbName}"/> | <c:out value="${item.oymbId}"/> | <c:out value="${item.oymbDelNy}"/> <br>

<a href="/infra/durian/durianEdit?oymbSeq=<c:out value="${item.oymbSeq}"/>">수정</a>
<a href="/infra/durian/durianForm?oymbSeq=<c:out value="${item.oymbSeq}"/>">등록</a>

