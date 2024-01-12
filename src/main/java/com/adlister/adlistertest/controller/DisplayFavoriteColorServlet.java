package com.adlister.adlistertest.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DisplayFavoriteColorServlet", urlPatterns = "/display-color")
public class DisplayFavoriteColorServlet extends HttpServlet {


//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getRequestDispatcher("displayColor.jsp");
//
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String color = request.getParameter("color");
        if(color==null) {
            color="black";
        } else {
            request.setAttribute("color", color);
            request.getRequestDispatcher("/displayColor.jsp").forward(request,response);
        }
    }


}
