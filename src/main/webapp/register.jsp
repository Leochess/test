<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<head>
	<meta charset="utf-8">
	<title>register</title>
	<link rel="stylesheet" href="static/css/style.css"/>

</head>
<body>
<div class="register-box">
	<h2>请注册</h2>
	<form action="<%= request.getContextPath() %>/registerServlet">
		<div class="register-row">
			<label for="username">用户名：</label>
			<input type="text" placeholder="请输入用户名" id="username" name="username" required>
		</div>
		<div class="register-row">
			<label for="password">密码：</label>
			<input type="password" placeholder="请输入密码" id="password" name="password" required>
		</div>
		<div class="sex-row">
			<label>性别：</label>
			<input type="radio" name="sex" value="boy" checked>男
			<input type="radio" name="sex" value="girl">女
		</div>
		<div class="hobby-row">
			<label>爱好：</label>
			<input type="checkbox" name="hobby" value="sing">唱歌
			<input type="checkbox" name="hobby" value="dance">跳舞
			<input type="checkbox" name="hobby" value="games">玩游戏
			<input type="checkbox" name="hobby" value="coding">编程
			<input type="checkbox" name="hobby" value="reading">读书
			<input type="checkbox" name="hobby" value="travel">旅游
		</div>
		<label>选择你的城市:</label>
		<select name="city">
			<option value="Beijing">北京</option>
			<option value="Nanjing">南京</option>
			<option value="Tianjin">天津</option>
			<option value="Shanghai">上海</option>
			<option value="Chongqing">重庆</option>
			<option value="SiChuan">四川</option>
			<option value="yunnan">云南</option>
		</select>
		<button id="confirmedButton" type="button">提交</button>
		<button id="loginButton" type="button">登录</button>
		<button type="reset">重置</button>
	</form>
	<script>
		document.getElementById("confirmedButton").addEventListener("click", function(){
			try {
				const username = document.getElementById("username").value.trim();
				const password = document.getElementById("password").value.trim();

				if (!username || !password) {
					throw new Error("所有字段都是必填项!");
				}

				alert("创建账号成功！点击确认后3秒将自动跳转到登录页面！");
				setTimeout(function () {
					window.location.href = "<%= request.getContextPath() %>/login.jsp";
				}, 3000);
			} catch (error) {
				alert(error.message);
			}
		});

		document.getElementById("loginButton").addEventListener("click", function () {
			window.location.href = "login.jsp";
		});
	</script>

</div>
</body>
</html>
