<%@ include file="common.jsp" %>
<t:page title="Official Website" activeMenuItem="home">

    <div class="my-home-page">

        <div class="jumbotron">
            <div class="container">
                <img src="/resources/images/tools.png" class="my-toolbox">
                <h1>Right tools at the right time.</h1>
                <p>Browse dozens of useful tools for your startup</p>
                <p><a class="btn btn-success btn-lg" href="/guide/" role="button">Guide Me</a></p>
                <form class="form-inline" method="post" style="margin-top: 30px">
                    <div class="form-group form-group-xs">
                        <label class="sr-only" for="email">Email:</label>
                        <input required type="email" class="form-control input-xs" size="40" id="email" name="email" placeholder="Email">
                    </div>
                    <button type="submit" class="btn btn-info btn-xs">Subscribe for news</button>
                </form>
            </div>
        </div>




    </div>

</t:page>

