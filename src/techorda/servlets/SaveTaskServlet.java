package techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import techorda.db.DBManager;
import techorda.db.Task;

import java.io.IOException;

@WebServlet(value="/save-task")
public class SaveTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        int id =  Integer.parseInt(request.getParameter("task_id"));
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_description");
        String deadlineDate = request.getParameter("deadline_date");
        String option = request.getParameter("task_option");

        Task task = DBManager.getTask(id);
        if(task!=null) {
            task.setName(name);
            task.setDescription(description);
            task.setDeadlineDate(deadlineDate);
            task.setOption(option);

            DBManager.updateTask(task);
            response.sendRedirect("/details?task_id=" + id);
        }
        else{
            response.sendRedirect("/");
        }
    }
}