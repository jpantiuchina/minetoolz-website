<%@ include file="common.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MineToolz</title>
    <link href="/resources/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <%--<link href="/resources/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">--%>
    <script src="/resources/jquery/1.11.1/jquery.min.js"></script>
    <script src="/resources/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="/resources/js/site.js"></script>
    <link href="/resources/css/site.css" rel="stylesheet">
</head>
<body>


<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">
                <img src="/resources/images/logo.png" width="34" height="19">
                MineToolz
            </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class=active><a href="/">Home</a></li>
                <li><a href="/">Tools</a></li>
                <li><a href="/">About Us</a></li>
                <li><a href="/">Contacts</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Login</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>



<div class="jumbotron">
    <div class="container">
        <img src="/resources/images/toolbox.png" class="my-toolbox">
        <h1>Right tools at the right time.</h1>
        <p>Browse dozens of useful tools for your startup</p>
        <p><a class="btn btn-success btn-lg" href="/" role="button">Watch the video</a></p>
        <form class="form-inline" style="margin-top: 30px">
            <div class="form-group form-group-xs">
                <label class="sr-only" for="email">Email:</label>
                <input type="email" class="form-control input-xs" size="40" id="email" name="email" placeholder="Email">
            </div>
            <button type="submit" class="btn btn-info btn-xs">Subscribe for news</button>
        </form>
    </div>
</div>

<div class="container">


    <br>
    <div class="row">
        <div class="col-md-3">
            <h2>IT &amp; Design</h2>
            <p>Developing software and art.</p>
            <p><a class="btn btn-default" href="#" role="button">IT &amp; Design Tools »</a></p>
            <p>
                <a href="">IDEs</a><br>
                <a href="">Website</a><br>
                <a href="">Version control systems</a><br>
                <a href="">Prototyping</a><br>
                <a href="">Sketching</a><br>
                <a href="">3D</a><br>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Collaboration</h2>
            <p>How to work better together.</p>
            <p><a class="btn btn-default" href="#" role="button">Collaborative Tools »</a></p>
            <p>
                <a href="">Issue trackers</a><br>
                <a href="">Video conferences</a><br>
                <a href="">Version control systems</a><br>
                <a href="">Chats</a><br>
                <a href="">Writing together</a><br>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Marketing</h2>
            <p>Ads and spamming.</p>
            <p><a class="btn btn-default" href="/tasks" role="button">Marketing Tools »</a></p>
            <p>
                <a href="">Banner services</a><br>
                <a href="">Newspaper ads</a><br>
                <a href="">Spam tools</a><br>
                <a href="">Annoying spam tools</a><br>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Finance</h2>
            <p>Keeping track of tons of dollars.</p>
            <p><a class="btn btn-default" href="/contacts" role="button">Financial Tools »</a></p>
            <p>
                <a href="">Accounting</a><br>
                <a href="">Payment systems</a><br>
                <a href="">Banner services</a><br>
            </p>
        </div>
    </div>

</div>

<footer>
    <div class="container">
        <div class="my-row">
                <div class="pull-left">
                    <a href="http://www.unibz.it/"><img src="/resources/images/unibz-logo-blue.png" width="30" height="24"></a>
                    <span class="hidden-xs">
                        &nbsp; © 2015 Free University of Bozen-Bolzano
                    </span>
                </div>

                <%--<div class="col-sm-6 text-right">--%>
                <div class="pull-right">
                    <a href="/">Suggest a tool</a>
                    &nbsp;
                    <a href="mailto:info@minetoolz.com">info@minetoolz.com</a>
                </div>
                <%--</div>--%>

        </div>
    </div>
</footer>

</body>
</html>
