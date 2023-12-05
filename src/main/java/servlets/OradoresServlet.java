package servlets;

import dao.OradorDAO;
import model.OradorEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/oradores")
public class OradoresServlet extends HttpServlet {
    private final OradorDAO oradorDAO = new OradorDAO();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nombre");
        String lastname = request.getParameter("apellido");
        String email = request.getParameter("email");
        String subject = request.getParameter("tema");

        LocalDate registration_date = LocalDate.now();
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formatDate = registration_date.format(format);

        OradorEntity orador = new OradorEntity(name, lastname, email, subject, formatDate);
        oradorDAO.insertOrador(orador);

        response.sendRedirect("index.jsp");
    }
}
