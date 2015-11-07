<%@ tag pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"        %>
<%@ taglib prefix="fn"     uri="http://java.sun.com/jsp/jstl/functions"   %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"      %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ attribute name="path"     required="true"  type="java.lang.String"  %>
<%@ attribute name="cssClass" required="false" type="java.lang.String"  %>
<%@ attribute name="label"    required="false" type="java.lang.String"  %>
<%@ attribute name="required" required="false" type="java.lang.Boolean" %>
<c:if test="${empty label}">
    <c:set var="label" value="${fn:toUpperCase(fn:substring(path, 0, 1))}${fn:toLowerCase(fn:substring(path, 1,fn:length(path)))}" />
</c:if>
<spring:bind path="${path}">
    <div class="form-group ${status.error ? 'has-error' : '' }">
        <label class="control-label col-sm-3 col-lg-2" for="${path}">${label}<c:if test="${required}"><span class="required"></span></c:if></label>
        <div class="col-sm-9 col-lg-10">
            <jsp:doBody/>
            <c:if test="${status.error}">
            <span class="help-block">
                <form:errors path="${path}"/>
            </span>
            </c:if>
        </div>
    </div>
</spring:bind>

