<%@ include file="common.jsp" %>
<t:layout title="Official Website" activeMenuItem="home">

    <div class="my-home-page">

        <div class="jumbotron">
            <div class="container">
                <img src="/resources/images/toolbox.png" class="my-toolbox">

                <h1><a class="slogan" href="/allTools/">Right&nbsptools at&nbspthe&nbspright&nbsptime.</a></h1>

                <%--<p>Do you have your <b style="color: green">Startup</b> idea?</p>--%>
                <p>No time, no knowledge, no money? No problem!</p>
                <p>You are at the <b>right</b> place!</p>
                <%--<p>We provide you the best <b>free <span style="color: green">Startup tools</span></b>!</p>--%>
                <%--<p>Start your <b style="color: green">Startup</b> with <b style="color: green">Startup tools!</b></p>--%>

                <p><a class="btn btn-success btn-lg" href="https://docs.google.com/forms/d/1ZZBF-AJL_TSyl47rhoV-8puwfeESgJif_PjtuZW2Whs/viewform?usp=send_form" role="button">Questionnaire
                </a></p>

            </div>
        </div>

        <div class="container">
            <h2>Start developing your idea with these Startup tools</h2>
            <div class="row">
                <t:small-tool-box toolNumber="1" toolTitle="Xtensio" urlName="xtensio"
                                  toolFooter="Dron's text "/>
                <t:small-tool-box toolNumber="2" toolTitle="Logogarden" urlName="logogarden"
                                  toolFooter="Start with an amazing logo. It's free!"/>
                <t:small-tool-box toolNumber="3" toolTitle="wevideo " urlName="wevideo"
                                  toolFooter="Easily create outstanding videos"/>
            </div>

            <div class="planes">
                <img src="/resources/images/planes.png" style="width: 100%">
            </div>

        </div>





    </div>



</t:layout>

