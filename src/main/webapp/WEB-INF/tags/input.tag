<%@ tag pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"        %>
<%@ taglib prefix="fn"     uri="http://java.sun.com/jsp/jstl/functions"   %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"      %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ attribute name="path"     required="true"  type="java.lang.String"  %>
<%@ attribute name="type"     required="false" type="java.lang.String"  %>
<%@ attribute name="cssClass" required="false" type="java.lang.String"  %>
<%@ attribute name="label"    required="false" type="java.lang.String"  %>
<%@ attribute name="required" required="false" type="java.lang.Boolean" %>
<%@ attribute name="rows"     required="false" type="java.lang.Integer" %>
<%@ attribute name="cols"     required="false" type="java.lang.Integer" %>
<c:if test="${empty label}">
    <c:set var="label" value="${fn:toUpperCase(fn:substring(path, 0, 1))}${fn:toLowerCase(fn:substring(path, 1,fn:length(path)))}" />
</c:if>
<c:if test="${empty type}">
    <c:set var="type" value="text" />
</c:if>
<spring:bind path="${path}">
    <div class="form-group ${status.error ? 'has-error' : '' }">
        <label class="control-label" for="${path}">${label}<c:if test="${required}"><span class="required"></span></c:if></label>
        <c:if test="${type == 'textarea'}">
            <form:textarea path="${path}" cssClass="form-control" rows="${rows}" cols="${cols}" />
        </c:if>
        <c:if test="${type != 'textarea'}">
            <form:input path="${path}" cssClass="form-control" type="${type}"/>
        </c:if>
        <c:if test="${status.error}">
            <span class="help-block">
                <form:errors path="${path}"/>
            </span>
        </c:if>
    </div>
</spring:bind>

