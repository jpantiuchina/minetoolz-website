<%@ include file="common.jsp" %>
<%--@elvariable id="tools" type="java.util.List<com.minetoolz.website.models.Tool>"--%>
<t:page-with-header title="Tools" activeMenuItem="tools">



    <div class="row">

        <div class="col-sm-3 col-md-2">

            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="${category == null            ? 'active' : ''}"><a href="/tools/"                         >All            </a></li>
                <li role="presentation" class="${category == 'it'            ? 'active' : ''}"><a href="/tools/categories/it/"           >IT &amp; Design</a></li>
                <li role="presentation" class="${category == 'collaboration' ? 'active' : ''}"><a href="/tools/categories/collaboration/">Collaboration  </a></li>
                <li role="presentation" class="${category == 'marketing'     ? 'active' : ''}"><a href="/tools/categories/marketing/"    >Marketing      </a></li>
                <li role="presentation" class="${category == 'finance'       ? 'active' : ''}"><a href="/tools/categories/finance/"      >Finance        </a></li>
            </ul>

        </div>
        <div class="col-sm-9 col-md-10">


            <div class="row">


                <c:forTokens items="1,2,3,4,5,6,7,8,9" delims=",">

                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="thumbnail">
                        <a href="/tools/google-docs/"><img src="/resources/images/google-docs.png" alt=""></a>
                        <div class="caption">
                            <h4><a href="/tools/google-docs/">Google Docs</a></h4>
                            <p>You can write text together like you are sharing one computer with many keyboards.</p>
                        </div>
                    </div>
                </div>
                </c:forTokens>

            </div>

        </div>





    </div>





</t:page-with-header>

