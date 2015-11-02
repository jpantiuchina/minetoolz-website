<%@ include file="common.jsp" %>
<t:site title="sdfsdf">
<form:form commandName="person">
    <table>
        <tr>
            <td>Name:</td>
            <td><form:input path="name" /><form:errors path="name" /></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><form:input path="age" /><form:errors path="age" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Save Changes" /></td>
        </tr>
    </table>
</form:form>
</t:site>
