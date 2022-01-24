package net.togogo.servlet;

import net.togogo.bean.User;
import net.togogo.service.ManageService;
import net.togogo.service.impl.ManageServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    ManageService manageService = new ManageServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String flag = "true";
        String userName = req.getParameter("userName");
        String pwd = req.getParameter("password");

        try {
            //查询所有数据
            List<User> userList = manageService.getUserAll();
            if (null != userList) {
                for (User user : userList) {
                    if (user.getUserCode().equals(userName) && user.getUserPassword().equals(pwd)) {
                        flag = "true";  //用户名密码正确
                        HttpSession session = req.getSession();
                        session.setAttribute("UserName", user.getUserName());
                        session.setAttribute("usercode", user.getUserCode());
                        session.setAttribute("userRole",user.getId());
                        break;
                    } else {
                        flag = "false"; //用户名密码错误
                    }
                }
            }
        }catch(Exception e){
                    e.printStackTrace();
                }

        if ("true" == flag) {
            resp.sendRedirect("index.jsp");
        } else {
            req.setAttribute("flag", flag);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
