<%@ tag body-content="empty" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="toolNumber"                 %>
<%@ attribute name="toolTitle"  required="true" %>
<%@ attribute name="urlName" required="true" %>
<%@ attribute name="toolFooter" required="true" %>
<%@ attribute name="style"                      %>

<c:choose>
    <c:when test="${style == 'clean'}">
        <div class="col-md-4 col-sm-6" style="text-align: center; margin-bottom: 50px; margin-top: 20px">
            <div style="font-size: 22px; color: gray"><span>${toolNumber}.</span> <c:out value="${toolTitle}"/></div>
            <div style="margin: 15px 0">
                <a href="/tools/${urlName}/">
                    <img src="/resources/images/tools/logos/${urlName}.png" height="80">
                </a>
            </div>
            <div style="font-size: 11px; color: gray"><c:out value="${toolFooter}"/></div>
        </div>
    </c:when>
    <c:otherwise>
        <div class="col-md-4 col-sm-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title" style="text-align: center">
                        <span class="pull-left">${toolNumber}</span>
                        <b>${toolTitle}</b>
                        <span class="pull-right" style="color:rgba(255,255,255,0)">${toolNumber}</span>
                    </h3>
                </div>
                <div class="panel-body" style="text-align: center">
                    <a href="/tools/${urlName}/">
                        <img src="/resources/images/tools/logos/${urlName}.png" height="80">
                    </a>
                </div>
                <div class="panel-footer">
                    <c:out value="${toolFooter}"/>
                </div>
            </div>
        </div>
    </c:otherwise>
</c:choose>