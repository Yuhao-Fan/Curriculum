package net.togogo.servlet;

import net.togogo.bean.Grade;
import net.togogo.bean.Course;
import net.togogo.service.ManageService;
import net.togogo.service.impl.ManageServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/gradesList")
public class GradesListServlet extends HttpServlet {
    ManageService manageService = new ManageServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        try {
            //查询所有数据
            List<Grade> gradesList = manageService.getGradeAll();

            List<Course> subjectList = (List<Course>)req.getAttribute("subjectList");
            //将数据放入request域中
            req.setAttribute("gradesList",gradesList);
            req.setAttribute("subjectList",subjectList);
            //发送到List页面
            req.getRequestDispatcher("/gradesList.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
