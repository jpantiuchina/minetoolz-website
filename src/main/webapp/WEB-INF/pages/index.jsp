<%@ include file="common.jsp" %>
<t:page title="Official Website" activeMenuItem="home">

    <div class="my-home-page">

        <div class="jumbotron">
            <div class="container">
                <img src="/resources/images/toolbox.png" class="my-toolbox">
                <h1><a class="slogan" href="/guide/">Right tools at the right time.</a></h1>
                <p>Selected tools for your startup</p>
                <p><a class="btn btn-success btn-lg" href="/#/" role="button">Watch Video
                </a></p>

            </div>
        </div>

        <div class="tools">
            <div class="container">
                <div class="row">
                    <c:forEach var="tool" items="${tools}">
                        <t:small-tool-box toolTitle="${tool.name}" urlName="${tool.urlName}" toolFooter="${tool.tinyDescription}" style="clear"/>
                        <t:small-tool-box toolTitle="${tool.name}" urlName="${tool.urlName}" toolFooter="${tool.tinyDescription}" style="clear"/>
                        <t:small-tool-box toolTitle="${tool.name}" urlName="${tool.urlName}" toolFooter="${tool.tinyDescription}" style="clear"/>
                        <t:small-tool-box toolTitle="${tool.name}" urlName="${tool.urlName}" toolFooter="${tool.tinyDescription}" style="clear"/>
                        <t:small-tool-box toolTitle="${tool.name}" urlName="${tool.urlName}" toolFooter="${tool.tinyDescription}" style="clear"/>
                        <t:small-tool-box toolTitle="${tool.name}" urlName="${tool.urlName}" toolFooter="${tool.tinyDescription}" style="clear"/>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
        <%--<div class="container">--%>
            <%--<div class="row">--%>

                <%--<c:forTokens items="1,2,3" delims=",">--%>

                <%--<div class="col-md-4">--%>
                    <%--<div class="panel panel-default">--%>
                        <%--<div class="panel-heading">--%>
                            <%--<h3 class="panel-title" style="text-align: center"><b>Click tool</b></h3>--%>
                        <%--</div>--%>
                        <%--<div class="panel-body" style="text-align: center">--%>
                            <%--<img src="/resources/images/crazyegg.png" height="64" >--%>
                        <%--</div>--%>
                        <%--<div class="panel-footer">--%>
                            <%--Recommended by Dron--%>
                            <%--(Professor at the unibz)--%>
                        <%--</div>--%>
                    <%--</div>--%>


                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="col-md-4">.col-md-4</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="col-md-4">.col-md-4</div>&ndash;%&gt;--%>
                <%--</div>--%>
                <%--</c:forTokens>--%>
            <%--</div>--%>
        <%--</div>--%>



</t:page>

