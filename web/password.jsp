<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        String flag = null;
        flag = (String)request.getAttribute("flag");
        if ("false" == flag){
    %>

    <script>
    alert("原密码错误!");
    </script>
    <%
        }
    %>

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
    <script type="text/javascript">
    function renew() {   //确认密码
        var newp = document.getElementById("newPassword").value;
        var renew = document.getElementById("reNewPassword").value;
        if (newp == "" || renew == ""){
            $("#msg").html("密码不能为空");
        } else if (newp == renew){
            $("#msg").html("√");
        }else {
            $("#msg").html("两次密码不一致");
        }
    }
    </script>

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
    <section class="publicMian ">
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
        <div class="right">
            <div class="location">
                <span>你现在所在的位置是:</span>
                <span>密码修改页面</span>
            </div>
            <div class="subjectAdd">
                <form action="pwdup" method="post">
                    <!--div的class 为error是验证错误，ok是验证成功-->
                    <div class="">
                        <label for="oldPassword">旧密码：</label>
                        <input type="password" name="oldPassword" id="oldPassword" required/>
                        <span name="old">*请输入原密码</span>
                    </div>
                    <div>
                        <label for="newPassword">新密码：</label>
                        <input type="password" name="newPassword" id="newPassword" required/>
                        <span >*请输入新密码</span>
                    </div>
                    <div>
                        <label for="reNewPassword">确认新密码：</label>
                        <input type="password" name="reNewPassword" id="reNewPassword" onblur=renew() required/>
                        <%--<div id="msg"></div>--%><span id="msg">*请确认密码，保证和新密码一致</span>

                    </div>
                    <div class="subjectAddBtn">
                        <!--<a href="#">保存</a>-->
                        <input type="submit" id="subbtn" value="保存" />
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