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

@WebServlet("/subjectList")
public class SubjectListServlet extends HttpServlet {
    ManageService manageService = new ManageServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //进入subjectList页面，查询所有成绩的数据并显示在页面上

        String grade = req.getParameter("grade");
        //System.out.println(grade);
        if (grade==null/*||grade.equals("")*/){
            grade = "false";
        }

        try {
            List<Course> subjectList = manageService.getCourseAll();
            //将数据存入request中
            req.setAttribute("subjectList",subjectList);
            //判断是否为gradesList请求的查询，true则进入gradesList继续查询，否则发送到subjectList
            if (!grade.equals("true")) {//发送至subjectList页面
                //System.out.println(grade);
                req.getRequestDispatcher("subjectList.jsp").forward(req, resp);
            }else {//进入gradesList查询
                req.getRequestDispatcher("gradesList").forward(req,resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
