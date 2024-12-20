<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>查询用户</title>
    <link rel="stylesheet" href="static/css/information.css">
    <script>
        function  back(){
            window.location.href="index.html";
    }
    </script>
</head>
<body>
    <form action="${pageContext.request.contextPath}/searchServlet">
        <div class="flex-container">
            <h2>查询用户</h2>
            <div class="inputbox">
                <label>请输入你要查询的用户名</label>
                <input type="text" name="account" placeholder="请输入用户名">
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
