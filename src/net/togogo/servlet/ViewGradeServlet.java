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

@WebServlet("/gradesView")
public class ViewGradeServlet extends HttpServlet {
    ManageService manageService = new ManageServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");

        try {
            Grade grade = manageService.getGradeById(id);
            String proId = String.valueOf(grade.getCourseID()); //强转int为String
            Course course = manageService.getCourseById(proId);
            req.setAttribute("grade",grade);
            req.setAttribute("courses",course);
            req.getRequestDispatcher("gradesView.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
