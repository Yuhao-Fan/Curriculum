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
        function check() {
            var radiovar = document.getElementsByName("pass");
            var grade=document.regform.address.value

            if(grade>=60.0)
            {
                radiovar[0].checked = "checked";
                radiovar[1].checked = "unchecked";
                // document.getElementById("li").innerHTML="及格"
            }
            else{
                radiovar[1].checked = "checked";
                radiovar[0].checked = "unchecked";
                // document.getElementById("li").innerHTML="不及格"
            }
        }
    </script>

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
<section class="publicMian ">
    <div class="left" style="height: 800px;">
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
            <span>学生成绩管理页面 >> 修改页面</span>
        </div>
        <div class="subjectAdd">
            <form action="gradesUpdating" name="regform">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <input type="hidden" name="id" value="${GradeList.id}"/>
                    <label for="courseID">学号：</label>
                    <input type="text" name="courseID" id="courseID" value="${GradeList.gradeCode}"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="studentName">学生姓名：</label>
                    <input type="text" name="studentName" id="studentName" value="${GradeList.studentName}"/>
                    <span >*</span>
                </div>

                <div>
                    <label for="address">成绩：</label>
                    <input type="text" name="address" id="address" onblur="check()" value="${GradeList.courseGrade}"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="grade">科目：</label>
                    <%--<input type="text" name="grade" id="grade" value=""/>--%>
                    <select name = "grade" id = "grade">
                        <c:forEach var="subjects" items="${Subjects}">
                            <option value="${subjects.id}" <c:if test="${subjects.id == GradeList.courseID}">selected</c:if>>
                                    ${subjects.id}${subjects.courseName}
                            </option>
                        </c:forEach>
                    </select>
                    <span>*</span>
                </div>
                <div>
                    <label >是否及格：</label>
                    <input type="radio" name="pass" value="1" <c:if test="${GradeList.isPass == 1}">checked</c:if>/>未及格
                    <input type="radio" name="pass" value="2" <c:if test="${GradeList.isPass == 2}">checked</c:if>/>及格
                </div>
                <div class="subjectAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="gradesList.jsp">返回</a>-->
                    <input type="submit" value="保存" />
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