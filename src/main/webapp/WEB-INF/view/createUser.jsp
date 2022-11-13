<%@ include file="common/header.jsp" %>

  <br>

  <c:url value="/createUser" var="createUserAction"/>

  <spring_form:form method="post" action="${createUserAction}" modelAttribute="createUser">
    <spring_form:label path="name">Name:    </spring_form:label> <spring_form:input path="name"/>
    <br>
    <spring_form:label path="surname">Surname: </spring_form:label> <spring_form:input path="surname"/>
    <br>
    <spring_form:label path="userLogin">Login: </spring_form:label> <spring_form:input path="userLogin"/>
    <br>
    <spring_form:label path="password">Password: </spring_form:label> <spring_form:input path="password"/>
    <br>
    <input type="submit" value="Create new user">
    <br>
  </spring_form:form>

<%@ include file="common/footer.jsp" %>
