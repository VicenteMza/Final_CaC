package controller;

import dao.OradorDAO;
import model.OradorEntity;
import util.ValidationOrador;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/oradores")
public class OradoresServlet extends HttpServlet {
    private final OradorDAO oradorDAO = new OradorDAO();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nombre");
        String lastname = request.getParameter("apellido");
        String email = request.getParameter("email");
        String subject = request.getParameter("tema");

        LocalDate registrationDate = LocalDate.now();
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formatDate = registrationDate.format(format);

        List<String> errors = new ArrayList<>();
        errors.addAll(ValidationOrador.validateName(name));
        errors.addAll(ValidationOrador.validateLastName(lastname));
        errors.addAll(ValidationOrador.validateSubject(subject));
        errors.addAll(ValidationOrador.validateEmail(email));

        if (errors.isEmpty()) {
            OradorEntity orador = new OradorEntity(null, name, lastname, email, subject, formatDate);
            oradorDAO.insertOrador(orador);
            response.sendRedirect("index.jsp");
        }else {
            System.out.println(errors);
            request.setAttribute("errors", errors);
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<OradorEntity> oradores = oradorDAO.getAll();
        request.setAttribute("oradores", oradores);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/listOradores.jsp");
        dispatcher.forward(request,response);
    }
}