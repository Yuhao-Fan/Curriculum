<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>学生成绩管理系统</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-1.8.3.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <script src="js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>

    <%
        String username = (String) session.getAttribute("UserName");
        if (null == username){
            response.sendRedirect("login.jsp");
        }
    %>
    <style>
        .nav-menu a {
            color: rgba(230, 247, 255, 0.7);
            font-size: 15px;
        }

        .nav-menu a:hover {
            color: #2F4052;
        }
    </style>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <a href="index.jsp"><h1>学生成绩管理系统</h1></a>
    <div class="left" style="height: 100%;">
        <!-- <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2> -->
        <nav>
            <ul class="nav nav-pills nav-stacked nav-menu">
                <li role="presentation" class="navbar-text"><a href="#"style="font-size:18px" >功能列表</a></li>
                <li role="presentation"  ><a href="subjectList?grade=true"><span class="glyphicon glyphicon-education" aria-hidden="true"></span>  学生成绩管理</a></li>
                <li role="presentation" ><a href="subjectList" > <span class="glyphicon glyphicon-retweet" aria-hidden="true"></span>  科目管理</a></li>
                <li role="presentation" ><a href="userList" ><span class="glyphicon glyphicon-user" aria-hidden="true"></span>  用户管理</a></li>
                <li role="presentation" ><a href="password.jsp" ><span class="glyphicon glyphicon-user" aria-hidden="true"></span>  密码修改</a></li>
                <li role="presentation" ><a href="logout" ><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>  退出系统</a></li>
            </ul>
        </nav>
    </div>
</header>

<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li ><a href="subjectList?grade=true">学生成绩管理</a></li>
                <li><a href="subjectList">科目管理</a></li>
                <li id="active"><a href="userList">用户管理</a></li>
                <li><a href="password.jsp">密码修改</a></li>
                <li><a href="logout">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <span>你现在所在的位置是:</span>
            <span>用户管理页面 >> 用户修改页面</span>
        </div>
        <div class="subjectAdd">
            <form action="#">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div>
                    <label for="userName">用户名称：</label>
                    <input type="text" name="userName" id="userName" placeholder="韩露"/>
                    <span >*</span>
                </div>

                <div>
                    <label >用户性别：</label>

                    <select name="">
                        <option value="man">男</option>
                        <option value="woman" selected>女</option>
                    </select>
                </div>
                <div>
                    <label for="data">出生日期：</label>
                    <input type="text" name="data" id="data" placeholder="2016年2月1日"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="userphone">用户电话：</label>
                    <input type="text" name="userphone" id="userphone" placeholder="13533667897"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="userAddress">用户地址：</label>
                    <input type="text" name="userAddress" id="userAddress" placeholder="北京"/>
                </div>
                <div>
                    <label >用户类别：</label>
                    <input type="radio" name="userlei"/>管理员
                    <input type="radio" name="userlei" checked/>经理
                    <input type="radio" name="userlei"/>普通用户

                </div>
                <div class="subjectAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.jsp">返回</a>-->
                    <input type="button" value="保存" onclick="history.back(-1)"/>
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
</footer>
<script src="js/time.js"></script>

</body>
</html>