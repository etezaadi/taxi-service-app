<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<Style>
    <%@include file='/WEB-INF/views/css/style_loginPage.css' %>
</Style>
<div class="container" id="container">
    <div class="form-container sign-up-container">
    </div>
    <div class="form-container sign-in-container">
        <form method="post" action="${pageContext.request.contextPath}/login">
            <h1>Sign in</h1>
            <input type="text" placeholder="Login" name="login" required/>
            <input type="password" placeholder="Password" name="password" required/>
            <h6 style="color:#ff4444">${errorMsg}</h6>
            <button>Sign In</button>
            <a href="${pageContext.request.contextPath}/drivers/add">Create a driver account</a>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-right">
                <h1>🚕Taxi Service🚕</h1>
                <h4>Login or registration and get the opportunity to manage the service.</h4>
            </div>
        </div>
    </div>
</div>
