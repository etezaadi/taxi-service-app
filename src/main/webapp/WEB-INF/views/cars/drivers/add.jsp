<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style_table.css'%>
</style>
<%@include file="/WEB-INF/views/header.jsp"%>
<h2>Add driver to car</h2>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Car ID</th>
            <th>Driver ID</th>
            <th>Add</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <input type="number" name="car_id" form="car" required>
            </td>
            <td>
                <input type="number" name="driver_id" form="car" required>
            </td>
            <td>
                <input type="submit" name="add" form="car">
            </td>
        </tr>
        <tbody>
    </table>
</div>
