<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<c:url var="search_customers_url" value="/customers/searchCustomers"/>
<c:url var="edit_customer_url" value="/customers/editCustomer"/>
<c:url var="delete_customer_url" value="/customers/deleteCustomer"/>

<div class="container">
    <form action="${search_customers_url}" method="post" modelAttribute="customer" id="formSearchData">
        <div class="row d-flex align-items-end">

            <div class="col-12 col-md-2">
                <label>Tên</label>
                <div class="input-group">
                    <input type="text" path="name" class="form-control" name="name" placeholder="Tên">
                </div>
                <!-- input-group -->
            </div>
            <div class="col-12 col-md-4">
                <label>Phone</label>
                <div class="input-group">
                    <input type="text" path="phone" class="form-control" name="phone" placeholder="Phone">
                </div>
                <!-- input-group -->
            </div>
            <button class="btn btn-primary float-right ml-auto"
                    style="height: 40px; float:right">Search
            </button>
        </div>
    </form>
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <h3>Danh sách khách hàng</h3>
            <a href="/customers/addCustomer" class="btn btn-primary">Thêm KH</a>
        </div>
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Ten</th>
                    <th scope="col">SDT</th>
                    <th scope="col">Ngay sinh</th>
                    <th scope="col">Gioi tinh</th>
                    <th scope="col">Dia chi</th>
                    <th scope="col">Diem tich luy</th>
                    <th scope="col">Trang thai</th>
                    <th scope="col">Mo ta</th>
                    <th scope="col">Hành động</th>
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
                        <td>
                            <form action="${edit_customer_url}" method="get" >
                                <input type="hidden" name="id" value="${customer.id}">
                                <button class="btn btn-warning btn-sm">Sửa</button>
                            </form>
                            <form action="${delete_customer_url}" method="post" >
                                <input type="hidden" name="id" value="${customer.id}">
                                <button class="btn btn-danger btn-sm">Xóa</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>