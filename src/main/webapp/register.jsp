<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
	<head>
		<meta charset="utf-8">
		<title>register</title>
		<link  rel="stylesheet" href="static/css/style.css"/>
	</head>
	<body>
		<div class="register-box">
			<h2>请注册</h2>
			<form action="${pageContext.request.contextPath}/registerServlet">
				<div class="register-row"> <label for="username">用户名：</label>
					<input type="text" placeholder="请输入用户名" id="username" required>
				</div>
				<!-- 将用户名和它的文本框当作一个整体，方便对齐,下面同理-->
				<div class="register-row"> <label for="password">密码：</label>
					<input type="password" placeholder="请输入密码" id="password" required>
				</div>
				<div class="register-row"> <label for="confirmedPassword">确认密码：</label>
					<input type="password" placeholder="请再次确认密码" id="confirmedPassword" required>
				</div>
				<div class="sex-row"><label>性别：</label>
				<input type="radio" name="sex" value="boy" checked>男
				<input type="radio" name="sex" value="girl">女
				</div>
				<div class="hobby-row"><label>爱好：</label>
					<input type="checkbox" name="hobby" value="sing">唱歌
					<input type="checkbox" name="hobby" value="dance">跳舞
					<input type="checkbox" name="hobby" value="games">玩游戏
					<input type="checkbox" name="hobby" value="coding">编程
				</div>
				<label>选择你的城市:</label>
				<select>
					<option value="Beijing">北京</option>
					<option value="Nanjing">南京</option>
					<option value="Tianjin">天津</option>
					<option value="Shanghai">上海</option>
					<option value="Chongqing">重庆</option>
				</select>
				<button id="confirmedButton" type="button">提交</button>
				<button id="loginButton" type="button">登录</button>
				<button type="reset">重置</button>
			</form>
			<script>
				document.getElementById("confirmedButton").addEventListener("click",function(){
					var username = document.getElementById("username").value;
					var password = document.getElementById("password").value;
					var confirmedPassword = document.getElementById("confirmedPassword").value;
					if(username && password && confirmedPassword &&(password === confirmedPassword)){
						alert("创建账号成功！点击确认后3秒将自动跳转到主页！");
						setTimeout(function(){
							window.location.href = "index.html";
							},3000);
					}
					// 用户名、密码、确认的密码都不为空且密码和确认的密码相等时，提示用户创建账号成功
					//实现3s自动跳转主页
					else{
						alert("请确认密码是否输入正确!");
					}
				});
				// 否则提示用户重新输入
				document.getElementById("loginButton").addEventListener("click",function(){
					window.location.href = "login.html";
				});
				//跳转登录页面
			</script>
		</div>
	</body>