
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>学生成绩管理系统</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>
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

    <div class="publicHeaderR">
        <p><span style="color: #f9f9f9" id="hours"></span><span style="color:#D4F2E7"> <%out.print(username);%></span > , 欢迎你！</p>
        <a href="logout" >退出</a>

    </div>

</header>

<!--主体内容-->
<section class="publicMian">
    <div class="left">
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
    <div class="right">
        <img class="wColck" src="img/cc.jpg" alt=""/>
        <div class="wFont">
            <h2><%out.print(username);%></h2>
            <p style="color: #2F4050; font-size: 22px;">欢迎来到学生成绩管理系统!</p>
            <!-- <span id="time">2015年1月1日 11:11  星期一</span> -->
            <!--    <section class="publicTime">
                    <span id="time">2015年1月1日 11:11  星期一</span>
                </section> -->
            <!-- <%--			<span id="hours"></span>--%> -->
            <section class="publicTime">
                <span id="time" style="color: #2f4050;">2020年11月1日 11:11  星期天</span>
                <a href="#"  style="color: #2f4050;">祝您天天好心情！</a>
            </section>
        </div>
    </div>
</section>
<footer class="footer">
</footer>
<script src="js/time.js"></script>

</body>
</html>