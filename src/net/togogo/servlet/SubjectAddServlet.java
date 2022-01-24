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

@WebServlet("/Add")
public class SubjectAddServlet extends HttpServlet {
    ManageService manageService = new ManageServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();

        DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");   //格式化时间

        String courseCode = req.getParameter("courseID");
        String courseName = req.getParameter("studentName");
        String schoolName = req.getParameter("school");
        String courseCredits = req.getParameter("courseCredits");

        String courseCounts = req.getParameter("courseCounts");

        String modify = req.getParameter("modify");
        String id = req.getParameter("id");
        String operator = String.valueOf(session.getAttribute("userRole"));   //获取当前登录的用户的角色
        String dateTime = df.format(LocalDateTime.now());  //当前时间


        String []param = {courseCode,courseName,schoolName,courseCredits,courseCounts,operator,dateTime};

        if (!modify.equals("true")){
        try {
            int count = manageService.getCourseAdd(param);
        } catch (Exception e) {
            e.printStackTrace();
        }
        }else {
            String []param1 = {courseCode,courseName,schoolName,courseCredits,courseCounts,operator,dateTime,id};
            try {
                int count = manageService.getCourseUpdate(param1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        req.getRequestDispatcher("subjectList").forward(req,resp);
    }

}
