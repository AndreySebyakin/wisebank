<%@ include file="common/header.jsp" %>

    <div class="header">
      <h1>WISE BANK.</h1>
      <h3>List of all cards.</h3>
    </div>

    <c:forEach items="${cards}" var="card">
      <button onclick="document.location='<c:url value="/card?id=${card.id}"/>'" class="button0 button5">
      Card number: ${card.cardNumber} <br>
      Card balance: ${card.accountBalance} <br>
      Card status: ${card.status} <br>
      </button> <br>
    </c:forEach>

<%@ include file="common/footer.jsp" %>
