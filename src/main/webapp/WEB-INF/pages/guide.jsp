<%@ include file="common.jsp" %>
<t:page-with-header title="Must-have Tools for Your Startup" activeMenuItem="guide">

    <div class="guide">

        <div class="row">
            <c:forEach var="tool" items="${tools}">
                <t:small-tool-box toolTitle="${tool.name}" urlName="${tool.urlName}" toolFooter="${tool.tinyDescription}" style="clear"/>
            </c:forEach>
        </div>
        <div class="planes">
            <img src="/resources/images/planes.png" style="width: 100%">
        </div>
    </div>

</t:page-with-header>

