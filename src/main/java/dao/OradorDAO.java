package dao;

import model.OradorEntity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OradorDAO {
    private static final String INSERT_ORADOR="INSERT INTO oradores (name, lastName, email, subject, registration_date) VALUES (?,?,?,?,?)";
    private final String GET_ALL_ORADORES= "SELECT * FROM oradores";
    public void insertOrador(OradorEntity orador){
        try(Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(INSERT_ORADOR)){
            statement.setString(1, orador.getName());
            statement.setString(2, orador.getLastName());
            statement.setString(3, orador.getEmail());
            statement.setString(4, orador.getSubject());
            statement.setString(5, orador.getRegistration_date());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<OradorEntity> getAll() {
        List<OradorEntity> oradores = new ArrayList<>();

        try(Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(GET_ALL_ORADORES);
            ResultSet rs = statement.executeQuery()){

            while(rs.next()){
                OradorEntity orador = new OradorEntity();
                orador.setId(rs.getLong("id"));
                orador.setName(rs.getString("name"));
                orador.setLastName(rs.getString("lastName"));
                orador.setEmail(rs.getString("email"));
                orador.setSubject(rs.getString("subject"));
                orador.setRegistration_date(rs.getString("registration_date"));

                oradores.add(orador);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return oradores;
    }
}
