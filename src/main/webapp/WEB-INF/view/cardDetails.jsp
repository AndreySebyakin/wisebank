<%@ include file="common/header.jsp" %>

      <div class="header">
        <h1>WISE BANK.</h1>
        <h3>Card details.</h3>
      </div>

       Card id: ${card.id} <br>
       Card number: ${card.cardNumber} <br>
       Card currency: ${card.currency} <br>
       Card valid thru: ${card.validThruMonth}.${card.validThruYear} <br>
       Card balance: ${card.account.accountBalance} <br>
       Card limit: ${card.account.accountLimit} <br>
       Card status: ${card.account.accountStatus.status} <br>
       Card user: ${card.account.user.name} ${card.account.user.surname} <br>

     <button onclick="" class="button0 button5"> Block account </button>
     <button onclick="" class="button0 button5"> Unblock account </button>
     <button onclick="" class="button0 button5"> Payments history </button>
     <button onclick="document.location='<c:url value="/cards"/>'" class="button0 button5"> Return to cards list </button>

<%@ include file="common/footer.jsp" %>