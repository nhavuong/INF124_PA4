package productrestservice.db;

import java.sql.*;


public class DatabaseConnector {


    private DatabaseConnector() {

    }

    public static Connection getConnection() {
        String URL = "jdbc:mysql://localhost:3307/jnah_shop";
        String USER = "root";
        String PASSWORD = "";
      

        try {
             Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return null;
    }


}
