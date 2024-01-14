package com.adlister.adlistertest.controller;

import com.adlister.adlistertest.model.Author;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AuthorServlet", urlPatterns = ("/author"))
public class AuthorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Author drSeuss = new Author();
        drSeuss.setFirst_name("Dr.");
        drSeuss.setLast_name("Seuss");
        request.setAttribute("drSeuss", drSeuss);
        request.getRequestDispatcher("/authorTest.jsp").forward(request,response);

    }
}