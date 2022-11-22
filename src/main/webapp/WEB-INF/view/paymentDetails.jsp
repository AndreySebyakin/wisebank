<%@ include file="common/header.jsp" %>

      <div class="header">
        <h1>WISE BANK.</h1>
        <h3>Payment details.</h3>
      </div>

       Payment id: ${payment.id} <br>
       Card: ${payment.creditCard.cardNumber} <br>
       Date: ${payment.date} <br>
       Payment balance before: ${payment.balanceBefore} <br>
       Payment amount: ${payment.paymentAmount} <br>
       Payment balance after: ${payment.balanceAfter} <br>
       Payment status: ${payment.paymentStatus.status} <br>
       Payment beneficiary: ${payment.beneficiary} <br>

     <button onclick="document.location='<c:url value="/payments"/>'" class="button0 button5"> Return to payment list </button>

<%@ include file="common/footer.jsp" %>