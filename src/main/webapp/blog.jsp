<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>博客列表页</title>
        <link rel="stylesheet" href="/static/css/blogStyle.css">
        <link rel="stylesheet" href="/static/css/blogList.css">
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
        <div class="container">
            <!-- 左侧区域，显示用户信息 -->
            <div class="container-left">
                <!-- 用户详情 -->
                <div class="card">
                    <!-- 用户的头像 -->
                    <img src="/static/img/person.png">
                    <!-- 用户名 -->
                    <h3>XXXXXXX</h3>
                    <!-- 其它信息 -->
                    
                    <!-- 文章分类 -->
                    <div class="counter">
                        <span>文章</span>
                        <span>分类</span>
                    </div>
                    <div class="counter">
                        <span>4</span>
                        <span>1</span>
                    </div>
                </div>
            </div>
            <!-- 右侧区域，显示博客列表 -->
            <div class="container-right">
                <!-- 每个 blog 代表一篇博客 -->
                <div class="blog">
                    <div class="title">承认平庸</div>
                    <div class="date">2024-09-08</div>
                    <div class="desc">
                        中国人的性情是喜欢调和折中的，譬如你说，这屋子太暗，须在这里开一个窗，大家一定不允许的。但如果你主张拆掉屋顶他们就来调和，愿意开窗了......
                    </div>
                    <a href="https://onojyun.com/2024/09/08/%e6%89%bf%e8%ae%a4%e5%b9%b3%e5%ba%b8/" class="detail">查看全文&gt;&gt;</a>
                </div>
                <div class="blog">
                    <div class="title">自命不凡症候群</div>
                    <div class="date">2024-08-30</div>
                    <div class="desc">
                        人们更倾向于寻找、解释和记住那些支持自己已有观点、信念的信息，这就是所谓的“确认偏差”。
					所以当有人被评价“特别”，甚至这个评价的角色还是具有一定身份、地位差别的，这种“特别感”就会更具价值......
                    </div>
                    <a href="https://onojyun.com/2024/08/30/%e8%87%aa%e5%91%bd%e4%b8%8d%e5%87%a1%e7%97%87%e5%80%99%e7%be%a4/" class="detail">查看全文&gt;&gt;</a>
                </div>
                <div class="blog">
                    <div class="title">情绪上头和博弈思维</div>
                    <div class="date">2024-07-29</div>
                    <div class="desc">
                        简单的“博弈思维”，务必要摒除最开始的情绪上头，否则没办法在一开始的时候就找到正确的“底层逻辑”。
					之所以要学会博弈思维，是因为你可以随时换回成对方的玩家身份将这个游戏玩到淋漓尽致......
                    </div>
                    <a href="https://onojyun.com/2024/07/29/%e6%83%85%e7%bb%aa%e4%b8%8a%e5%a4%b4%e5%92%8c%e5%8d%9a%e5%bc%88%e6%80%9d%e7%bb%b4/" class="detail">查看全文&gt;&gt;</a>
                </div>
                <div class="blog">
                    <div class="title">中国人的A与B</div>
                    <div class="date">2024-07-13</div>
                    <div class="desc">
                        A是走在人行横道上过马路的行人，B是开着车应该礼让行人的司机。
					再加以中国式逻辑：只要证明了B是错的，那A一定是对的；
					反之同理，如果A是绝对没错的，那么B就绝对有错......
                    </div>
                    <a href="https://onojyun.com/2024/07/13/%e4%b8%ad%e5%9b%bd%e4%ba%ba%e7%9a%84a%e4%b8%8eb/" class="detail">查看全文&gt;&gt;</a>
                </div>
            </div>
        </div>
    </body>
