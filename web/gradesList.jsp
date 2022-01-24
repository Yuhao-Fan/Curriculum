<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                location.href="subjectList?grade=true"
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
<section class="publicMian " style="height: 800px;">
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
            <span>学生成绩管理页面</span>
        </div>
        <div class="search">
            <form action="gradeSearch" method="get">
            <span>学生姓名：</span>
            <input type="text" name="xingming" placeholder="请输入学生姓名"/>

            <span>科目：</span>
            <select name="kemu" >
                <option value="">--请选择--</option>
                <c:forEach var="subjects" items="${subjectList}">
                <option value="${subjects.id}">${subjects.courseName}</option>
<!-- <%--                    <option value="">邯郸市五得利面粉厂</option>--%> -->
                </c:forEach>
            </select>

            <span>是否及格：</span>
            <select name="jigeSearch">
                <option value="">--请选择--</option>
                <option value="2">及格</option>
                <option value="1">未及格</option>
            </select>

            <input type="button" value="查询" onclick="form.submit()" />
                <input type="button" value="返回" onclick="back()"/>
            </form>
            <a href="GradesGetCourse">添加</a>
        </div>
        <!--学生成绩表格 样式和供应商公用-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%" style="text-align: center;">学号</th>
                <th width="20%"style="text-align: center;">学生姓名</th>
                <th width="10%"style="text-align: center;">科目</th>
                <th width="10%"style="text-align: center;">成绩</th>
                <th width="10%"style="text-align: center;">是否及格</th>
                <th width="10%"style="text-align: center;">创建时间</th>
                <th width="30%"style="text-align: center;">操作</th>
            </tr>
            <c:forEach var="grades" items="${gradesList}">
                <tr>
                    <td>${grades.gradeCode}</td>
                    <td>${grades.studentName}</td>
                    <td>
                        <c:forEach var="subjectList" items="${subjectList}">
                        <c:if test="${grades.courseID == subjectList.id}">${subjectList.courseName}</c:if>
                        </c:forEach>
                            <!-- <%--${grades.courseID}--%> -->
                    </td>
                    <td>${grades.courseGrade}</td>
                    <td>
                        <c:if test="${grades.isPass == 1}">未及格</c:if>
                        <c:if test="${grades.isPass == 2}">及格</c:if>
                    </td>
                    <td>${grades.creationDate}</td>
                    <td>
                        <a href="gradesView?id=${grades.id}"><img src="img/R.png" alt="查看" title="查看"/></a>
                        <a href="gradesUpdate?id=${grades.id}"><img src="img/xg.jpg" alt="修改" title="修改"/></a>
                        <a href="gradeDelete?id=${grades.id}" class="removeGrade"><img src="img/sc.png" alt="删除" title="删除"/></a>
                    </td>
                </tr>
            </c:forEach>

        </table>
    </div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">
<div class="removerChid">
    <h2>提示</h2>
    <div class="removeGrade">
        <p>你确定要删除该订单吗？</p>
        <a href="#" id="yes">确定</a>
        <a href="#" id="no">取消</a>
    </div>
</div>
</div>

    <footer class="footer">
    </footer>

<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
<script src="js/time.js"></script>

</body>
</html>