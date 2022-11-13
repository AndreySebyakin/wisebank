<%@ include file="common/header.jsp" %>

   <div class="header">
     <h1>WISE BANK.</h1>
     <h3>Admin control panel</h3>
   </div>

  <br>
  <br>
  <button onclick="document.location='<c:url value="/showCreateUser"/>'" class="button0 button5"> Create user </button>
  <br>
  <br>
  <button onclick="document.location='<c:url value="/showCreateAccount"/>'" class="button0 button5"> Create account </button>
  <br>
  <br>
  <button onclick="document.location='<c:url value="/payments"/>'" class="button0 button5"> Create card </button>
  <br>
  <br>

<%@ include file="common/footer.jsp" %>
