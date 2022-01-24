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

@WebServlet("/gradesUpdate")
public class gradesUpdateServlet extends HttpServlet {

    ManageService manageService = new ManageServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");

        try {
            Grade GradeList = manageService.getGradeById(id);

            List<Course> Subjects = manageService.getCourseAll();

            req.setAttribute("GradeList",GradeList);
            req.setAttribute("Subjects",Subjects);

        } catch (Exception e) {
            e.printStackTrace();
        }


        req.getRequestDispatcher("gradesUpdate.jsp").forward(req,resp);
    }
}
