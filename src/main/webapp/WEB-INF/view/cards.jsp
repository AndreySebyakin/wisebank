<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
    <title> Wise bank. List of cards </title>
    <style><%@include file="/WEB-INF/styles/header-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/footer-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/buttons-style.css"%></style>
  </head>

  <body>
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

    <div class="footer">
      <p> &#169 2022, Andrey Sebyakin.</p>
      <a href="https://www.linkedin.com/in/andrey-sebyakin/" target="_blank">Contact</a>
      <a href="mailto:andrey.sebyakin.by@gmail.com">Send email</a>
    </div>
  </body>
</html>
