<%@ tag body-content="empty" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"        %>
<%@ attribute name="toolNumber" required="true" %>
<%@ attribute name="toolTitle" required="true" %>
<%@ attribute name="toolLogo" required="true" %>
<%@ attribute name="toolFooter" required="true" %>


<div class="col-md-4 col-sm-6" style="border-right: solid 1px silver; text-align: center; margin-bottom: 50px; margin-top: 20px">

    <div style="font-size: 22px; color: gray"><span>${toolNumber}.</span> <c:out value="${toolTitle}"/></div>
    <div style="margin: 15px 0"><img src=${toolLogo} height="80"></div>
    <div style="font-size: 11px; color: gray"><c:out value="${toolFooter}"/></div>

</div>


<%--<div class="col-md-4 col-sm-6">--%>
    <%--<div class="panel panel-default">--%>
        <%--<div class="panel-heading">--%>
            <%--<h3 class="panel-title" style="text-align: center">--%>
                <%--<span class="pull-left">${toolNumber}</span>--%>
                <%--<b>${toolTitle}</b>--%>
                <%--<span class="pull-right" style="color:#f5f5f5">${toolNumber}</span>--%>
            <%--</h3>--%>
        <%--</div>--%>
        <%--<div class="panel-body" style="text-align: center">--%>
            <%--<img src=${toolLogo} height="80">--%>
        <%--</div>--%>
        <%--<div class="panel-footer">--%>
            <%--<c:out value="${toolFooter}"/>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
