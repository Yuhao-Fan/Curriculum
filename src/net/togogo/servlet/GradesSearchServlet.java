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

@WebServlet("/gradeSearch")
public class GradesSearchServlet extends HttpServlet {
    ManageService manageService = new ManageServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String xingming = req.getParameter("xingming");
        String kemu = req.getParameter("kemu");
        String jigeSearch = req.getParameter("jigeSearch");
        System.out.println(xingming);
        System.out.println(kemu);
        System.out.println(jigeSearch);

        List<Grade> grades = null;
        try {
            grades = manageService.getGradeByCondition(xingming,kemu,jigeSearch);
            for (Grade grade:grades){
                System.out.println(grade);
            }
            List<Course> subjectList = manageService.getCourseAll();
            //将数据存入request中
            req.setAttribute("subjectList",subjectList);

            req.setAttribute("gradesList",grades);
            req.getRequestDispatcher("/gradesList.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
