<%@ include file="common.jsp" %>
<%--@elvariable id="tool" type="com.minetoolz.website.models.Tool"--%>
<t:page-with-header title="${tool.name}" activeMenuItem="tools">


    <div class="thumbnail">
    <img src="http://i1-win.softpedia-static.com/screenshots/Start-Up_3.png" alt="">
    </div>


    <p style="white-space:pre-line"><c:out value="${tool.description}"/></p>



</t:page-with-header>

