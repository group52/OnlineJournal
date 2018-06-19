<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Entity List</h2>
<table border = "2" >
    <tr><th>ID</th><th>Name</th><th>Parent ID</th><th>Entity Type</th><th>Parameters</th></tr>
    <c:forEach var = "entity" items = "${list}">
        <tr>
            <td>${entity.id}</td>
            <td><a href = "/checkLogin?id=${loginPassword.userId}">${entity.title}</a></td>
            <td>${entity.parentId}</td>
            <td>${entity.entityType}</td>
            <td><a href = "paramEntity?id=${entity.id}"> parameters </a></td>
        </tr>
    </c:forEach>
</table>
<a href = "enter"> Start page </a>
</body>
</html>
