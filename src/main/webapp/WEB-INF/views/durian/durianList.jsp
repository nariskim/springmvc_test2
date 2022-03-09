<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">

			<c:out value="${item.oymbSeq}" />
			 | <c:out value="${item.oymbAdminNy}" />
			 | <c:out value="${item.oymbDormancyNy}" />
			 | <a href="/infra/durian/durianView?oymbSeq=<c:out value="${item.oymbSeq}"/>">
			 <c:out value="${item.oymbName}" /></a>
			 | <c:out value="${item.oymbId}" />
			 | <c:out value="${item.oymbPassword}" />
			 | <c:out value="${item.oymbPwdModDate}" />
			 | <c:out value="${item.oymbGenderCd}" />
			 | <c:out value="${item.oymbDob}" />
			 | <c:out value="${item.oymbSavedCd}" />
			 | <c:out value="${item.oymbMarriageCd}" />
			 | <c:out value="${item.oymbMarriageDate}" />
			 | <c:out value="${item.oymbChildenNy}" />
			 | <c:out value="${item.oymbFavoriteColor}" />
			 | <c:out value="${item.oymbRecommenderSeq}" />
			 | <c:out value="${item.oymbEmailConsentNy}" />
			 | <c:out value="${item.oymbSmsConsentNy}" />
			 | <c:out value="${item.oymbPushConsentNy}" />
			 | <c:out value="${item.oymbDesc}" />
			 | <c:out value="${item.oymbDelNy}" />
			<br>



		</c:forEach>
	</c:otherwise>
</c:choose>


