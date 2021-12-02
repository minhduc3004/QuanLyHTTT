<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
<c:if test="${addBookSuccess}">
    <div>Successfully added Book with ISBN: ${savedBook.isbn}</div>
</c:if>

<c:url var="add_customer_url" value="/customers/addCustomer"/>
<form:form action="${add_book_url}" method="post" modelAttribute="customer">
    <form:label path="id">Id: </form:label> <form:input type="text" path="id"/>
    <form:label path="name">Ten: </form:label> <form:input type="text" path="name"/>
    <form:label path="phone">SDT: </form:label> <form:input path="phone"/>
    <form:label path="dateOfBirth">Ngay sinh: </form:label> <form:input type="text" path="dateOfBirth"/>
    <form:label path="sex">Gioi tinh: </form:label> <form:input path="sex"/>
    <form:label path="address">Dia chi: </form:label> <form:input path="address"/>
    <form:label path="score">Diem tich luy: </form:label> <form:input path="score"/>
    <form:label path="status">Trang thai: </form:label> <form:input path="status"/>
    <form:label path="description">Mo ta: </form:label> <form:input path="description"/>
    <input type="submit" value="submit"/>
</form:form>
</body>
</html>

