package techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import techorda.db.DBManager;
import techorda.db.Task;

import java.io.IOException;

@WebServlet(value="/add-task")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_description");
        String deadlineDate = request.getParameter("deadline_date");
        String option = request.getParameter("option");
        Task task = new Task();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadlineDate);
        task.setOption(option);
        DBManager.addTask(task);
        response.sendRedirect("/");
    }
}

