<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
    <title> Wise bank. Card details </title>
    <style><%@include file="/WEB-INF/styles/header-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/footer-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/buttons-style.css"%></style>
  </head>

  <body>
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

      <div class="footer">
        <p> &#169 2022, Andrey Sebyakin.</p>
        <a href="https://www.linkedin.com/in/andrey-sebyakin/" target="_blank">Contact</a>
        <a href="mailto:andrey.sebyakin.by@gmail.com">Send email</a>
      </div>
  </body>
</html>