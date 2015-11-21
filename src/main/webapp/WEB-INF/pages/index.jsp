<%@ include file="common.jsp" %>
<t:layout title="Official Website" activeMenuItem="home">

    <div class="my-home-page">

        <div class="jumbotron">
            <div class="container">
                <img src="/resources/images/toolbox.png" class="my-toolbox">

                <h1><a class="slogan" href="/guide/">Right&nbsptools at&nbspthe&nbspright&nbsptime.</a></h1>

                <p>Do you have your <b style="color: green">Startup</b> idea?</p>
                <p>No time, no knowledge, no money? No problem!</p>
                <p>You are at the <b>right</b> place!</p>
                <p>We provide you the best <b>free <span style="color: green">Startup tools</span></b>!</p>
                <p>Start your <b style="color: green">Startup</b> with <b style="color: green">Startup tools!</b></p>

                <p><a class="btn btn-success btn-lg" href="/#/" role="button">Watch Video
                </a></p>

            </div>
        </div>

        <div class="container">
            <div class="row">
                <t:small-tool-box toolNumber="1" toolTitle="Xtensio" urlName="xtensio"
                                  toolFooter="Want to get most in one package only?"/>
                <t:small-tool-box toolNumber="2" toolTitle="Logogarden" urlName="logogarden"
                                  toolFooter="Start with an amazing logo. It's free!"/>
                <t:small-tool-box toolNumber="3" toolTitle="wevideo " urlName="wevideo"
                                  toolFooter="Easily create outstanding videos"/>
            </div>

            <div class="planes">
                <img src="/resources/images/planes.png" style="width: 100%">
            </div>

        </div>



        <%--<div class="container">--%>
            <%--<div class="guide">--%>
                <%--<div class="row">--%>
                    <%--<c:forEach var="tool" items="${tools}">--%>
                        <%--<t:small-tool-box toolTitle="${tool.name}" urlName="${tool.urlName}"--%>
                                          <%--toolFooter="${tool.tinyDescription}" />--%>
                    <%--</c:forEach>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

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


</t:layout>

