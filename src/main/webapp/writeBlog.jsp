<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>博客编辑页</title>
    <link rel="stylesheet" href="/static/css/blogStyle.css">
    <link rel="stylesheet" href="/static/css/writeBlog.css">
    <!-- 引入依赖 -->
    <link rel="stylesheet" href="editor.md-master/css/editormd.min.css">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="editor.md-master/lib/marked.min.js"></script>
    <script src="editor.md-master/lib/prettify.min.js"></script>
    <script src="editor.md-master/editormd.js"></script>
</head>
<body>
    <!-- 导航栏 -->
    <div class="nav">
        <img src="/static/img/logo.png">
        <span class="title">我的博客系统</span>
        <!-- 使用 span 把左右两侧的元素给撑开 -->
        <span class="spacer"></span>
        <a href="search.html">查询</a>
        <a href="writeBlog.html">写博客</a>
        <a href="changePassword.html">改密码</a>
        <a href="deleteAccount.html">注销</a>
    </div>
    <!-- 版心 -->
    <div class="blog-edit-container">
        <!-- 标题编辑区 -->
        <div class="title">
            <input type="text" placeholder="在这里写下文章标题" id="title">
            <input type="button" value="发布文章" id="submit">
        </div>
        <!-- 内容编辑区 -->
        <div id="editor">

        </div>
    </div>

    <script>
        // 初始化 editor.md
        let editor = editormd("editor", {
            // 这里的尺寸必须在这里设置，设置样式会被 editormd 自动覆盖
            width: "100%",
            // 设定编辑高度
            height: "500px",
            // 编辑页中的初始化内容
            markdown: "# 在这里写下一篇博客",
            //指定 editor.md 依赖的插件路径
            path: "editor.md-master/lib/"
        });
    </script>
</body>
</html>