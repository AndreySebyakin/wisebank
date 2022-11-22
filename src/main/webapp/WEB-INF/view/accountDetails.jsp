<%@ include file="common/header.jsp" %>

      <div class="header">
        <h1>WISE BANK.</h1>
        <h3>Account details.</h3>
      </div>

       Account id: ${account.id} <br>
       Account balance: ${account.accountBalance} <br>
       Account limit: ${account.accountLimit} <br>
       Account status: ${account.accountStatus.status} <br>
       Account owner: ${account.user.name} ${account.user.surname} <br>

<%@ include file="common/footer.jsp" %>