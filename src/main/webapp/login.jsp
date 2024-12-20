<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<head>
	<meta charset="utf-8">
	<title>login</title>
	<link rel="stylesheet" href="static/css/style.css"/>
</head>
<body>
<div class="login-box">
	<h2>请登录</h2>
	<form id="loginForm" action="loginServlet">
		<div class="login-row">
			<label for="username">用户名：</label>
			<input type="text" placeholder="请输入用户名" id="username" required>
		</div>
		<div class="login-row">
			<label for="password">密码：</label>
			<input type="password" placeholder="请输入密码" id="password" required>
		</div>
		<button id="loginButton" type="button">登录</button>
		<button id="registerButton" type="button">注册</button>
	</form>
	<script>
		// 处理登录和注册按钮的逻辑
		const loginButton = document.getElementById("loginButton");
		const registerButton = document.getElementById("registerButton");

		// 登录按钮的点击事件处理
		loginButton.addEventListener("click", function() {
			try {
				// 获取用户名和密码输入
				const username = document.getElementById("username").value;
				const password = document.getElementById("password").value;
				// 有效性检查
				if (username && password) {
					// 登录成功后跳转页面
					window.location.href = "index.html";
				} else {
					throw new Error("请输入用户名和密码！");
				}
			} catch (error) {
				// 显示错误信息
				alert(error.message);
			}
		});

		// 注册按钮的点击事件处理
		registerButton.addEventListener("click", function() {
			// 跳转到注册页面
			window.location.href = "register.html";
		});
	</script>
</div>
</body>
