<%@ include file="common/header.jsp" %>

  <br>

  <c:url value="/createAccount" var="createAccountAction"/>

  <spring_form:form method="post" action="${createAccountAction}" modelAttribute="createAccount">
    <spring_form:label path="accountLimit">Insert account limit:    </spring_form:label> <spring_form:input path="accountLimit"/>
    <br>
    <spring_form:label path="userId">Insert user ID: </spring_form:label> <spring_form:input path="userId"/>
    <br>
    <input type="submit" value="Create new account">
    <br>
  </spring_form:form>

<%@ include file="common/footer.jsp" %>
