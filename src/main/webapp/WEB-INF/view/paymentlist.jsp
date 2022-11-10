<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
    <title> Wise bank. List of payments </title>
    <style><%@include file="/WEB-INF/styles/header-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/footer-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/buttons-style.css"%></style>
  </head>

  <body>
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

    <div class="footer">
      <p> &#169 2022, Andrey Sebyakin.</p>
      <a href="https://www.linkedin.com/in/andrey-sebyakin/" target="_blank">Contact</a>
      <a href="mailto:andrey.sebyakin.by@gmail.com">Send email</a>
    </div>
  </body>
</html>
