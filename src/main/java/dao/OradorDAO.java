package dao;

import model.OradorEntity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OradorDAO {
    private static final String INSERT_ORADOR="INSERT INTO oradores (name, lastName, email, subject, registration_date) VALUES (?,?,?,?,?)";
    public void insertOrador(OradorEntity orador){
        try(Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(INSERT_ORADOR)){
            statement.setString(1, orador.getName());
            statement.setString(2, orador.getLasName());
            statement.setString(3, orador.getEmail());
            statement.setString(4, orador.getSubject());
            statement.setString(5, orador.getRegistration_date());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
