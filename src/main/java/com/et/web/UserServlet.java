package com.et.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.et.dao.UserDao;
import com.et.model.User;
import com.et.dao.UrunDao;
import com.et.model.Urun;

/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the user.
 * @email Ramesh Fadatare
 */

@WebServlet("/")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;
    private UrunDao urunDao;

    public void init() {
        userDao = new UserDao();
        urunDao =new UrunDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertUser(request, response);
                    break;
                case "/delete":
                    deleteUser(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateUser(request, response);
                    break;
                case "/newUrun":
                    showNewFormUrun(request, response);
                    break;
                case "/insertUrun":
                    insertUrun(request, response);
                    break;
                case "/deleteUrun":
                    deleteUrun(request, response);
                    break;
                case "/editUrun":
                    showEditFormUrun(request, response);
                    break;
                case "/updateUrun":
                    updateUrun(request, response);
                    break;
                case "/listUser":
                	listUser(request, response);
                    break;
                default:
                    listUrun(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < User > listUser = userDao.getAllUser();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = userDao.getUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("password");
        User newUser = new User(name, email, country);
        userDao.saveUser(newUser);
        response.sendRedirect("Index.jsp");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        User user = new User(id, name, email, country);
        userDao.updateUser(user);
        response.sendRedirect("list");
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDao.deleteUser(id);
        response.sendRedirect("list");
    }
    
    /////////////////////////////Urun's Functions//////////////////////////////////////////////
    private void listUrun(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException, ServletException {
    	        List < Urun > listUrun= urunDao.getAllUrun();
    	        request.setAttribute("listUrun", listUrun);
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
    	        dispatcher.forward(request, response);
    	    }

    	    private void showNewFormUrun(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
    	        dispatcher.forward(request, response);
    	    }

    	    private void showEditFormUrun(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, ServletException, IOException {
    	        int id = Integer.parseInt(request.getParameter("id"));
    	        Urun existingUrun = urunDao.getUrun(id);
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
    	        request.setAttribute("urun", existingUrun);
    	        dispatcher.forward(request, response);

    	    }

    	    private void insertUrun(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        String name = request.getParameter("name");
    	        String urunKodu = request.getParameter("urunKodu");
    	        int alisFiyat =Integer.parseInt(request.getParameter("alisFiyat")); 
    	        int satisFiyat =Integer.parseInt(request.getParameter("satisFiyat")); 
    	        String urunDetay = request.getParameter("urunDetay");
    	        Urun newUrun= new Urun(name,urunKodu,alisFiyat,satisFiyat,urunDetay);
    	        urunDao.saveUrun(newUrun);
    	        response.sendRedirect("Index.jsp");
    	    }

    	    private void updateUrun(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        int id = Integer.parseInt(request.getParameter("id"));
    	        String name = request.getParameter("name");
    	        String urunKodu = request.getParameter("urunKodu");
    	        int alisFiyat = Integer.parseInt( request.getParameter("alisFiyat"));
    	        int satisFiyat = Integer.parseInt(request.getParameter("satisFiyat"));
    	        String urunDetay = request.getParameter("urunDetay");

    	        Urun urun = new Urun(id, name,urunKodu, alisFiyat, satisFiyat, urunDetay);
    	        urunDao.updateUrun(urun);
    	        response.sendRedirect("list");
    	    }

    	    private void deleteUrun(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        int id = Integer.parseInt(request.getParameter("id"));
    	        urunDao.deleteUrun(id);
    	        response.sendRedirect("list");
    	    }
}