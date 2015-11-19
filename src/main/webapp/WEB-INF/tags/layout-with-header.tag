<%@ tag pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="activeMenuItem" required="false" %>
<t:layout title="${title}" activeMenuItem="${activeMenuItem}">

<div class="container">
<h1><c:out value="${title}"/></h1>

<jsp:doBody/>


</div>
</t:layout>
