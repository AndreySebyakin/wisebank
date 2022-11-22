<%@ include file="common/header.jsp" %>

    <div class="header">
      <h1>WISE BANK.</h1>
      <h3>List of all users.</h3>
    </div>

    <c:forEach items="${users}" var="user">
      <button onclick="document.location='<c:url value="/user?id=${user.id}"/>'" class="button0 button5">
      User ID: ${user.id} <br>
      Name and surname: ${user.name} ${user.surname} <br>
      User role: ${user.roleId.roles} <br>
      </button> <br>
    </c:forEach>

<%@ include file="common/footer.jsp" %>
