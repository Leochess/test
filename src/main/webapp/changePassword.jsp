<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改密码</title>
    <link rel="stylesheet" href="static/css/information.css">
    <script>
        function back() {
            window.location.href="blog.jsp";
        }
    </script>
</head>
<body>
<form action="changePasswordDo.jsp" method="post">
    <div class="flex-container">
        <h2>修改密码</h2>
        <div class="inputbox">
            <label>账号</label>
            <input type="text" name="account" placeholder="请输入账号" required> <!-- 增加required属性 -->
        </div>
        <div class="inputbox">
            <label>原密码</label>
            <input type="password" name="password" placeholder="请输入原密码" required> <!-- 增加required属性 -->
        </div>
        <div class="inputbox">
            <label>新密码</label>
            <input type="password" name="newpassword" placeholder="请输入新密码" required> <!-- 增加required属性 -->
        </div>
        <div class="button-box">
            <div>
                <input type="submit" value="确认">
            </div>
            <div>
                <input name="" type="button" value="返回" onclick="back()">
            </div>
        </div>
    </div>
</form>
</body>
</html>
