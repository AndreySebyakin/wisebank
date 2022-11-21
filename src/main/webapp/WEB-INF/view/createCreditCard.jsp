<%@ include file="common/header.jsp" %>

  <div class="header">
    <h1>WISE BANK.</h1>
    <h3>Create card.</h3>
  </div>

  <c:url value="/createCreditCard" var="createCreditCardAction"/>

  <spring_form:form method="post" action="${createCreditCardAction}" modelAttribute="createCreditCard">
    <spring_form:label path="cardNumber">Insert card number: </spring_form:label> <spring_form:input path="cardNumber"/>
    <br>
    <spring_form:label path="validThruMonth">Insert Valid Thru Month: </spring_form:label> <spring_form:input path="validThruMonth"/>
    <spring_form:label path="validThruYear">Insert Valid Thru Year: </spring_form:label> <spring_form:input path="validThruYear"/>
    <br>
    <spring_form:label path="cvv">Insert CVV: </spring_form:label> <spring_form:input path="cvv"/>
    <br>
    <spring_form:label path="pin">Insert PIN: </spring_form:label> <spring_form:input path="pin"/>
    <br>
    <spring_form:label path="accountId">Insert Account ID: </spring_form:label> <spring_form:input path="accountId"/>
    <br>
    <input type="submit" value="Create new credit card">
    <br>
  </spring_form:form>

<%@ include file="common/footer.jsp" %>
