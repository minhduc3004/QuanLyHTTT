<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add Book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<body>
<c:if test="${addBookSuccess}">
    <div>Successfully added Book with ISBN: ${savedBook.isbn}</div>
</c:if>

<c:url var="add_customer_url" value="/customers/addCustomer"/>
<div class="container">
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <h3>Danh sách khách hàng</h3>
            <a href="/customers/viewCustomers" class="btn btn-primary">Danh sách KH</a>
        </div>
        <div class="card-body">
            <form:form action="${add_book_url}" method="post" modelAttribute="customer">
                <form>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Id</label>
                        <div class="col-sm-10">
                            <input type="text" id="id" name="id"  class="form-control"  value="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">name</label>
                        <div class="col-sm-10">
                            <input type="text" id="name" name="name"  class="form-control"  value="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">phone</label>
                        <div class="col-sm-10">
                            <input type="text" id="phone" name="phone"  class="form-control"  value="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">dateOfBirth</label>
                        <div class="col-sm-10">
                            <input type="date" id="dateOfBirth" name="dateOfBirth"  class="form-control"  value="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Gender</label>
                        <div class="col-sm-10">
                            <select name="sex" id="sex" class="form-control">
                                <option value="1">Nam</option>
                                <option value="0">Nữ</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-10">
                            <input type="text" id="address" name="address"  class="form-control"  value="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Score</label>
                        <div class="col-sm-10">
                            <input type="text" id="score" name="score"  class="form-control"  value="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Status</label>
                        <div class="col-sm-10">
                            <select name="status" id="status" class="form-control">
                                <option value="1">Hiện</option>
                                <option value="0">Ẩnoption>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Description</label>
                        <div class="col-sm-10">
                            <input type="text" id="description" name="description"  class="form-control"  value="">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
<%--                <form:label path="id">Id: </form:label> <form:input type="text" path="id"/>--%>
<%--                <form:label path="name">Ten: </form:label> <form:input type="text" path="name"/>--%>
<%--                <form:label path="phone">SDT: </form:label> <form:input path="phone"/>--%>
<%--                <form:label path="dateOfBirth">Ngay sinh: </form:label> <form:input type="text" path="dateOfBirth"/>--%>
<%--                <form:label path="sex">Gioi tinh: </form:label> <form:input path="sex"/>--%>
<%--                <form:label path="address">Dia chi: </form:label> <form:input path="address"/>--%>
<%--                <form:label path="score">Diem tich luy: </form:label> <form:input path="score"/>--%>
<%--                <form:label path="status">Trang thai: </form:label> <form:input path="status"/>--%>
<%--                <form:label path="description">Mo ta: </form:label> <form:input path="description"/>--%>
<%--                <input type="submit" value="submit"/>--%>
            </form:form>

        </div>
    </div>

</div>
</body>
</html>

