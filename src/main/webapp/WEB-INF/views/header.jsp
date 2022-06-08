<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style_header.css' %>
</style>
</head>
<body>
<div class="header">
    <a class="logo">Taxi Service🚕</a>
    <div class="header-right">
        <a class="active" href="${pageContext.request.contextPath}/index">Main</a>
        <a class="active" href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
</div>
</body>
</html>
