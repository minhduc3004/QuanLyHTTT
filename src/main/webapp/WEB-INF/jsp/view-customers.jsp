<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>View Books</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Ten</th>
        <th>SDT</th>
        <th>Ngay sinh</th>
        <th>Gioi tinh</th>
        <th>Dia chi</th>
        <th>Diem tich luy</th>
        <th>Trang thai</th>
        <th>Mo ta</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.phone}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.sex}</td>
            <td>${customer.address}</td>
            <td>${customer.score}</td>
            <td>${customer.status}</td>
            <td>${customer.description}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>