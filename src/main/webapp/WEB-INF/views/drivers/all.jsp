<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style_table.css' %>
</style>
<%@include file="/WEB-INF/views/header.jsp"%>
<h2>All drivers</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>License number</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
            </td>
        </tr>
        </c:forEach>
        <tbody>
    </table>
</div>

