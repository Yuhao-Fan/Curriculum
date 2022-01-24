<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script>
        function back() {
            location.href="userList"
        }
    </script>
    <%
        String username = (String) session.getAttribute("UserName");
        if (null == username){
            response.sendRedirect("login.jsp");
        }
    %>

    <%
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
        String now = sdf.format(date);
        session.setAttribute("date",now);
        session.setAttribute("sdf",sdf);
    %>

    <script type="text/javascript">
        function sendname() {
            var sendname = $("#sendname").val();
            window.location.href="selectuser?name="+sendname;
        }
    </script>
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
                <span>用户管理页面</span>
            </div>
            <div class="search">
                <span>用户名：</span>
                <input type="text" id="sendname" placeholder="请输入用户名"/>
                <input type="button" value="查询" onclick="sendname()"/>
                <input type="button" value="重置" onclick="back()"/>
                <a href="userAdd.jsp">添加</a>
            </div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%" style="text-align: center;">用户编码</th>
                    <th width="20%" style="text-align: center;">用户名称</th>
                    <th width="10%" style="text-align: center;">性别</th>
                    <th width="10%" style="text-align: center;">年龄</th>
                    <th width="10%" style="text-align: center;">电话</th>
                    <th width="10%" style="text-align: center;">用户类型</th>
                    <th width="30%" style="text-align: center;">操作</th>
                </tr>
                <c:forEach var="userList" items="${userList}">
                    <tr>
                        <td>${userList.userCode}</td>
                        <td>${userList.userName}</td>
                        <td>
                            <c:if test="${userList.gender == 1}">女</c:if>
                            <c:if test="${userList.gender == 2}">男</c:if>
                        </td>
                        <td>${date - sdf.format(userList.birthday)}</td>
                        <td>${userList.userphone}</td>
                        <td>
                            <c:if test="${userList.userRole == 1}">管理员</c:if>
                            <c:if test="${userList.userRole == 2}">老师</c:if>
                            <c:if test="${userList.userRole == 3}">学生</c:if>
                        </td>
                        <td>
                            <a href="userView?id=${userList.id}"><img src="img/R.png" alt="查看" title="查看"/></a>
                            <a href="userUpdate?id=${userList.id}&modify=true"><img src="img/xg.jpg" alt="修改" title="修改"/></a>
                            <a href="userDelete?id=${userList.id}" class="removeUser"><img src="img/sc.png" alt="删除" title="删除"/></a>
                        </td>
                    </tr>
                </c:forEach>

            </table>

        </div>
    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
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