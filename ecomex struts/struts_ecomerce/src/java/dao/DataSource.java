
package dao;
import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DataSource {

    private Connection connection;
    private String url;
    private String username;
    private String password;
    private String database;

    public DataSource() throws SQLException {


        url = "jdbc:mysql://localhost:3306/";
        username = "root";
        password = "123456";
        database = "db_comercio";
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            connection = DriverManager.getConnection(url + database, username, password);
            System.out.println("Conexão com banco ok");
        } catch (SQLException e) {
            connection = null;
            System.out.println("Problemas na conexão!");
            throw new RuntimeException(e);
        }
    }
    public Connection getConnection() {
        return connection;
    }
    public void setConnection(Connection connection) {
        this.connection = connection;
    }
}
