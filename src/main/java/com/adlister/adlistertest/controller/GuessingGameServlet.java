package com.adlister.adlistertest.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@WebServlet(name = "GuessingGameServlet", urlPatterns = "/guessing-game")
public class GuessingGameServlet extends HttpServlet {
    public static String outcome;
    public static int randomNumber;
    public static int userGuess;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("guessingGame/guess.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Random rand = new Random();
        int int_random = rand.nextInt(3);
        String userInput = request.getParameter("guess");
        int userInt = Integer.parseInt(userInput);
        System.out.println("randomNumber: " + int_random);
        System.out.println("userNumber: " + userInput);
        randomNumber = int_random;
        userGuess = userInt;
        if (int_random==userInt) {
            outcome = "Match!";
            response.sendRedirect("guessingGame/outcome.jsp");
        } else {
            outcome = "no match";
            response.sendRedirect("guessingGame/outcome.jsp");
        }


    }

}
