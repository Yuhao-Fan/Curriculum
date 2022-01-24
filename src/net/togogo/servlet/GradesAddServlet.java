package net.togogo.servlet;

import net.togogo.service.ManageService;
import net.togogo.service.impl.ManageServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/gradesAdd")
public class GradesAddServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");   //格式化时间

        String courseId = req.getParameter("courseId");
        String courseName = req.getParameter("courseName");

        String school = req.getParameter("school");

        String subjectList = req.getParameter("subjectList");
        String pass = req.getParameter("pass");

        String operator = String.valueOf(session.getAttribute("userRole"));   //获取当前登录的用户的角色
        String dateTime = df.format(LocalDateTime.now());  //当前时间


        String []param = {courseId,courseName,school,subjectList,pass,operator,dateTime};


        ManageService manageService = new ManageServiceImpl();
        try {
            int count = manageService.getGradeAdd(param);

            if(count != 0) {
                System.out.println("成功");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        req.getRequestDispatcher("subjectList?grade=true").forward(req,resp);
    }
}
