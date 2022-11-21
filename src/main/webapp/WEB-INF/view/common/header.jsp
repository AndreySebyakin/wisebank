<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

<html>
  <head>
    <title>Wise bank</title>
    <style><%@include file="/WEB-INF/styles/header-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/footer-style.css"%></style>
    <style><%@include file="/WEB-INF/styles/buttons-style.css"%></style>
  </head>

  <body>
    <ul>
      <li><a href="<c:url value="/main"/>">Main page</a></li>
      <li><a href="<c:url value="/users"/>">List of users</a></li>
      <li><a href="<c:url value="/cards"/>">List of cards</a></li>
      <li><a href="<c:url value="/payments"/>">List of payments</a></li>
      <li><a href="">Log out</a></li>
    </ul>