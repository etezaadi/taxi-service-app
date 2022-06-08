<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style_table.css' %>
</style>
<%@include file="/WEB-INF/views/header.jsp"%>
<h2>All cars</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Model</th>
            <th>Manufacturer name</th>
            <th>Manufacturer country</th>
            <th>Drivers</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.id}"/>
            </td>
            <td>
                <c:out value="${car.model}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.country}"/>
            </td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
            </td>
        </tr>
        </c:forEach>
        <tbody>
    </table>
</div>

