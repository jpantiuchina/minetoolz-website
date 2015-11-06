<%@ include file="common.jsp" %>
<t:page-with-header title="Sugest a Tool">

    <form:form commandName="toolSuggestion">

        <t:input path="tool" required="true"/>

        <t:input path="website" required="true"/>

        <t:input path="comments" type="textarea" rows="10" cols="80"/>

        <t:input path="email" type="email" label="Your email (optional)"/>

        <button type="submit" class="btn btn-primary">Suggest</button>

    </form:form>



</t:page-with-header>
