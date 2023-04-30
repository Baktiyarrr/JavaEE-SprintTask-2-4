package techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import techorda.db.DBManager;
import techorda.db.Task;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/home.html")
public class HomeServlet  extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Task> tasks = DBManager.getTasks();
        request.setAttribute("zadaniya",tasks);
        request.getRequestDispatcher("/Tasks.jsp").forward(request, response);
    }
}
