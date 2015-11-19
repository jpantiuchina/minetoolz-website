<%@ include file="common.jsp" %>
<t:layout-with-header title="News Subscription">




    <t:form modelAttribute="subscriber" submitButtonLabel="Subscribe for news">


        <t:input path="email" type="email" label="Your email"/>


    </t:form>



</t:layout-with-header>

