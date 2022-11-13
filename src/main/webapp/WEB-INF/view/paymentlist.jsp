<%@ include file="common/header.jsp" %>

    <div class="header">
      <h1>WISE BANK.</h1>
      <h3>List of all payments.</h3>
    </div>

    <c:forEach items="${payments}" var="payment">
      <button onclick="document.location='<c:url value="/payment?id=${payment.id}"/>'" class="button0 button5">
      Card number: ${payment.cardNumber} <br>
      Date: ${payment.date} <br>
      Amount: ${payment.paymentAmount} <br>
      Status: ${payment.paymentStatus} <br>
      Beneficiary: ${payment.beneficiary} <br>
      </button> <br>
    </c:forEach>

<%@ include file="common/footer.jsp" %>
