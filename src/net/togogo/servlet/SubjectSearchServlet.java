package net.togogo.servlet;

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

@WebServlet("/selectcourse")
public class SubjectSearchServlet extends HttpServlet {
    ManageService manageService = new ManageServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String ProName = req.getParameter("name");

        List<Course> subjectList = null;
        try {
            subjectList = manageService.getCourseByName(ProName);
            req.setAttribute("subjectList",subjectList);
            req.getRequestDispatcher("subjectList.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
