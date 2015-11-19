<%@ include file="common.jsp" %>
<t:layout-with-header title="Sugest a Tool">

    <t:form modelAttribute="toolSuggestion" submitButtonLabel="Suggest">

        <t:input path="tool" required="true" label="Tool name"/>

        <t:input path="website" required="true" label="Tool website"/>

        <t:input path="comments" type="textarea" rows="5" cols="80" label="Your comments"/>

        <t:input path="email" type="email" label="Your email (optional)"/>


    </t:form>



</t:layout-with-header>
