<%@ include file="common.jsp" %>
<t:page-with-header title="News Subscription">




    <t:form modelAttribute="subscriber" submitButtonLabel="Subscribe for news">


        <t:input path="email" type="email" label="Your email"/>


    </t:form>



</t:page-with-header>

