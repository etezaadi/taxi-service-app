<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style_table.css'%>
</style>
<%@include file="/WEB-INF/views/header.jsp"%>
<h2>Add manufacturer</h2>
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add"></form>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Country</th>
            <th>Add</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="name" form="manufacturer" required>
            </td>
            <td>
                <input type="text" name="country" form="manufacturer" required>
            </td>
            <td>
                <input type="submit" name="add" form="manufacturer" required>
            </td>
        </tr>
        <tbody>
    </table>
</div>
