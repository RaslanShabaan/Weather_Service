<%--
  Created by IntelliJ IDEA.
  User: RESO
  Date: 7/17/2017
  Time: 9:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="post" action="/j_spring_security_check">
    <label>Name</label>
    <input name="UName"/>

    <label>Pass</label>
    <input name="UPass"/>

    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>

    <button> Goo </button>
</form>
</body>
</html>
