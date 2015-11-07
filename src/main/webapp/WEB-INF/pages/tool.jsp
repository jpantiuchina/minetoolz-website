<%@ include file="common.jsp" %>
<%--@elvariable id="tool" type="com.minetoolz.website.models.Tool"--%>
<t:page-with-header title="${tool.name}" activeMenuItem="tools">

    <div class="row">

        <div class="col-sm-6">
            <div class="thumbnail">
                <img src="/resources/images/google-docs.png" alt="">
            </div>

        </div>
        <div class="col-sm-6">
            <p style="white-space:pre-line"><c:out value="${tool.description}"/></p>
            <p><a href="<c:out value="${tool.website}"/>"><c:out value="${tool.website}"/></a></p>

        </div>

    </div>



    <h2>User Comments</h2>


    <c:forEach var="userRating" items="${tool.userRatings}">

        <div class="media" id="comment-<c:out value="${userRating.id}"/>">
            <div class="media-body">
                <h4 class="media-heading">
                    <c:out value="${userRating.name}"/>
                    <span> </span>
                    <span style="color: goldenrod">
                        <c:forEach begin="1" end="${userRating.starCount}">&#x2605;</c:forEach>
                    </span>
                </h4>
                <c:out value="${userRating.comment}"/>
            </div>
        </div>

    </c:forEach>







    <h2 id="leave-comment">Leave Comment</h2>

    <t:form modelAttribute="userRating" submitButtonLabel="Comment">

        <t:input path="name" label="Your name"/>

        <t:input path="email" label="Email (hidden, optional)"/>

        <t:input path="comment" label="Comment" type="textarea" rows="5"/>

        <t:control-group path="starCount" label="Tool rating">
            <div class=radio><label><form:radiobutton path="starCount" value="5"/> 5 (Excellent tool) </label></div>
            <div class=radio><label><form:radiobutton path="starCount" value="4"/> 4 (Good tool)      </label></div>
            <div class=radio><label><form:radiobutton path="starCount" value="3"/> 3 (OK tool)        </label></div>
            <div class=radio><label><form:radiobutton path="starCount" value="2"/> 2 (Not a good tool)</label></div>
            <div class=radio><label><form:radiobutton path="starCount" value="1"/> 1 (Useless tool)   </label></div>
        </t:control-group>

    </t:form>







</t:page-with-header>

