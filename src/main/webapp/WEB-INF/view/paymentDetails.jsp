<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
    <title> Wise bank. Payment details </title>
    <style><%@include file="/WEB-INF/styles/header-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/footer-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/buttons-style.css"%></style>
  </head>

  <body>
      <div class="header">
        <h1>WISE BANK.</h1>
        <h3>Payment details.</h3>
      </div>

       Payment id: ${payment.id} <br>
       Account: ${payment.account.id} <br>
       Card: ${payment.creditCard.cardNumber} <br>
       Date: ${payment.date} <br>
       Payment balance before: ${payment.balanceBefore} <br>
       Payment amount: ${payment.paymentAmount} <br>
       Payment balance after: ${payment.balanceAfter} <br>
       Payment status: ${payment.paymentStatus.status} <br>
       Payment beneficiary: ${payment.beneficiary} <br>

     <button onclick="" class="button0 button5"> Cancel payment </button>
     <button onclick="" class="button0 button5"> Return to payment list </button>

      <div class="footer">
        <p> &#169 2022, Andrey Sebyakin.</p>
        <a href="https://www.linkedin.com/in/andrey-sebyakin/" target="_blank">Contact</a>
        <a href="mailto:andrey.sebyakin.by@gmail.com">Send email</a>
      </div>
  </body>
</html>