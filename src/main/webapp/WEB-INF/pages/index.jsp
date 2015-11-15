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



        <div class="container">
            <div class="row">

                <c:forTokens items="1,2,3" delims=",">

                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="text-align: center"><b>Click tool</b></h3>
                        </div>
                        <div class="panel-body" style="text-align: center">
                            <img src="/resources/images/crazyegg.png" height="64" >
                        </div>
                        <div class="panel-footer">
                            Recommended by Dron
                            (Professor at the unibz)
                        </div>
                    </div>


                <%--</div>--%>
                <%--<div class="col-md-4">.col-md-4</div>--%>
                <%--<div class="col-md-4">.col-md-4</div>--%>
                </div>
                </c:forTokens>
            </div>
        </div>



</t:page>

