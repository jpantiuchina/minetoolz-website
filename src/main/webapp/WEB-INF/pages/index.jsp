<%@ include file="common.jsp" %>
<t:page title="Official Website" activeMenuItem="home">

    <div class="my-home-page">

        <div class="jumbotron">
            <div class="container">
                <img src="/resources/images/tools.png" class="my-toolbox">
                <h1>Right tools at the right time.</h1>
                <p>Browse dozens of useful tools for your startup</p>
                <p><a class="btn btn-success btn-lg" href="/guide/" role="button">Guide Me
                </a></p>
                <form class="form-inline" method="post" style="margin-top: 30px">
                    <div class="form-group form-group-xs">
                        <label class="sr-only" for="email">Email:</label>
                        <input required type="email" class="form-control input-xs" size="40" id="email" name="email" placeholder="Email">
                    </div>
                    <button type="submit" class="btn btn-info btn-xs">Subscribe for news</button>
                </form>
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

