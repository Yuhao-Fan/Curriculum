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

    <script>
        function back() {
            location.href="subjectList"
        }
    </script>

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
            <strong>你现在所在的位置是:</strong>
            <span>科目管理页面 >> 科目修改页</span>
        </div>
        <div class="subjectAdd">
            <form action="#">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="courseID">科目编码：</label>
                    <input type="text" name="courseID" id="courseID" placeholder="PRO-CODE—001"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="studentName">科目名称：</label>
                    <input type="text" name="studentName" id="studentName" placeholder="测试科目001"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="people">联系人：</label>
                    <input type="text" name="people" id="people" placeholder="韩露"/>
                    <span>*</span>

                </div>
                <div>
                    <label for="userphone">联系电话：</label>
                    <input type="text" name="userphone" id="userphone" placeholder="15918230478"/>
                    <span></span>
                </div>
                <div>
                    <label for="address">联系地址：</label>
                    <input type="text" name="address" id="address" placeholder="北京"/>
                    <span></span>

                </div>
                <div>
                    <label for="grade">传真：</label>
                    <input type="text" name="grade" id="grade" placeholder="15918230478"/>
                    <span></span>

                </div>
                <div>
                    <label for="describe">描述：</label>
                    <input type="text" name="describe" id="describe" placeholder="描述"/>
                    <span></span>

                </div>
                <div class="subjectAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="subjectList.jsp">返回</a>-->
                    <input type="button" value="保存" onclick="history.back(-1)"/>
                    <input type="button" value="返回" onclick="back()"/>
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