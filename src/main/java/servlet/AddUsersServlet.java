package servlet;

import maneger.EventManager;
import maneger.UserManager;
import model.Event;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/users/add")
public class AddUsersServlet extends HttpServlet {

    private UserManager userManager = new UserManager();
    private EventManager eventManager = new EventManager();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String email = req.getParameter("email");
        int eventId = Integer.parseInt(req.getParameter("eventId"));

        User users = User.builder()
                .name(name)
                .surname(surname)
                .email(email)
                .event(eventManager.getById(eventId))
                .build();
        userManager.add(users);
        resp.sendRedirect("/users");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Event> all = eventManager.getAll();
        req.setAttribute("events",all);
        req.getRequestDispatcher("/WEB-INF/addUser.jsp").forward(req, resp);
    }
}
