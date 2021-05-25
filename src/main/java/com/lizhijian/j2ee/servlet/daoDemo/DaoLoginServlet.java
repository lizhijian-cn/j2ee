package com.lizhijian.j2ee.servlet.daoDemo;

import com.lizhijian.j2ee.bean.daoDemo.Person;
import com.lizhijian.j2ee.dao.DAOFactory;
import com.lizhijian.j2ee.dao.daoDemo.PersonDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DaoLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Person person = new Person();
        person.setUsername(username);
        person.setPassword(username);

        PersonDAO dao = DAOFactory.getPersonDao();
        HttpSession session = request.getSession(true);
        session.setAttribute("username", username);
        if (dao.login(person)) {
            response.sendRedirect("loginSuccess.jsp");
        } else {
            response.sendRedirect("loginFailed.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
