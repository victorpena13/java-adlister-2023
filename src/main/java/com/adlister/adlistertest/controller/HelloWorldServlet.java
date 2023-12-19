package com.adlister.adlistertest.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import static java.lang.System.out;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    public static int counter;

    public static void reset() {
        counter=1;
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        if(name==null) {
            out.println("<h1>Hello, World</h1>");
            counter++;
        } else if (name.equals("bgates")) {
            response.sendRedirect("https://microsoft.com");
            return;
        } else if(name.equals("reset")) {
            out.println("<h1>Hello, World</h1>");
            reset();
        } else {
            out.println("<h1>Hello, " + name + "</h1>");
            counter++;
        }

        out.println("this page has been seen: " + counter);
    }
}
