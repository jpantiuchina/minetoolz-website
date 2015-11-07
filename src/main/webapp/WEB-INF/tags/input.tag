<%@ tag pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"        %>
<%@ taglib prefix="fn"     uri="http://java.sun.com/jsp/jstl/functions"   %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"      %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t"      tagdir="/WEB-INF/tags"                         %>
<%@ attribute name="path"     required="true"  type="java.lang.String"  %>
<%@ attribute name="type"     required="false" type="java.lang.String"  %>
<%@ attribute name="cssClass" required="false" type="java.lang.String"  %>
<%@ attribute name="label"    required="false" type="java.lang.String"  %>
<%@ attribute name="required" required="false" type="java.lang.Boolean" %>
<%@ attribute name="rows"     required="false" type="java.lang.Integer" %>
<%@ attribute name="cols"     required="false" type="java.lang.Integer" %>
<c:if test="${empty type}">
    <c:set var="type" value="text" />
</c:if>
<t:control-group path="${path}" label="${label}" required="${required}">
    <spring:bind path="${path}">
        <c:choose>
            <c:when test="${type == 'textarea'}">
                <c:choose>
                    <c:when test="${status.error}">
                        <form:textarea path="${path}" cssClass="form-control" rows="${rows}" cols="${cols}" autofocus="autofocus"/>
                    </c:when>
                    <c:otherwise>
                        <form:textarea path="${path}" cssClass="form-control" rows="${rows}" cols="${cols}"/>
                    </c:otherwise>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${status.error}">
                        <form:input path="${path}" cssClass="form-control" type="${type}" autofocus="autofocus"/>
                    </c:when>
                    <c:otherwise>
                        <form:input path="${path}" cssClass="form-control" type="${type}"/>
                    </c:otherwise>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </spring:bind>
</t:control-group>
