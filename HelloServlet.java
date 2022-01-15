package com.example.demo2;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        if (name != null) message = "Hello, " + name + "!";

        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");

//        response.sendRedirect("/hello-jsp?name=" + name);
//        response.sendRedirect("https://www.google.com");

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/hello-jsp?name=" + name);
        requestDispatcher.forward(request, response);
    }

    public void destroy() {
    }
}