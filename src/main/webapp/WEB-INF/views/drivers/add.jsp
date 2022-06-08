<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style_table.css'%>
</style>
<%@include file="/WEB-INF/views/header.jsp"%>
<h2>Add driver</h2>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Name</th>
            <th>License number</th>
            <th>Login</th>
            <th>Password</th>
            <th>Add</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="name" form="driver" required>
            </td>
            <td>
                <input type="text" name="license_number" form="driver" required>
            </td>
            <td>
                <input type="text" name="login" form="driver" required>
            </td>
            <td>
                <input type="password" name="password" form="driver" required>
            </td>
            <td>
                <input type="submit" name="add" form="driver">
            </td>
        </tr>
        <tbody>
    </table>
</div>
