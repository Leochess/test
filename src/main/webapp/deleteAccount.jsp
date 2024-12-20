<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注销账号</title>
    <link rel="stylesheet" href="static/css/information.css">
    <script>
        function  back(){
            window.location.href="index.html";
    }
    </script>
</head>
<body>
    <form action="deleteAccountDo.jsp">
        <div class="flex-container">
            <h3>确认要注销账号吗？</h3>
            <h4>（此操作不可撤销！）</h4>
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