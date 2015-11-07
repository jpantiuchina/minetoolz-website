<%@ tag pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"        %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ attribute name="modelAttribute" required="true" type="java.lang.String"  %>
<%@ attribute name="submitButtonLabel" required="false" type="java.lang.String"  %>
<form:form modelAttribute="${modelAttribute}" cssClass="form-horizontal">

    <jsp:doBody/>

    <div class="form-group">
        <div class="col-sm-offset-3 col-lg-offset-2 col-sm-9 col-lg-10">
            <button type="submit" class="btn btn-primary"><c:out value="${submitButtonLabel}">Save</c:out></button>
        </div>
    </div>

</form:form>
