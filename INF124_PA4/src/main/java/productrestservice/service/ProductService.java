package productrestservice.service;

import productrestservice.db.DatabaseConnector;
import productrestservice.db.DatabaseUtils;
import productrestservice.model.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductService {


    private final static String ALL_PRODUCT_QUERY = "SELECT * FROM CLOTH";

    public static Product getProductById(int id) {
        //Get a new connection object before going forward with the JDBC invocation.
        Connection connection = DatabaseConnector.getConnection();
        ResultSet resultSet = DatabaseUtils.retrieveQueryResults(connection, ALL_PRODUCT_QUERY + " WHERE ID = " + id);

        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    Product rs = new Product();
                    
                    rs.setId(resultSet.getInt("ID"));
                    rs.setName(resultSet.getString("NAME"));
                    rs.setDescription(resultSet.getString("DESCRIPTION"));
                    rs.setImgHref(resultSet.getString("IMGHREF"));
                    rs.setPrice(resultSet.getDouble("PRICE"));
                    rs.setQuantity(resultSet.getInt("QUANTITY"));
                    
                    return rs;

                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return null;


    }

    public static List<Product> getAllProducts() {
        List<Product> lists = new ArrayList<Product>();

        Connection connection = DatabaseConnector.getConnection();
        ResultSet resultSet = DatabaseUtils.retrieveQueryResults(connection, ALL_PRODUCT_QUERY);

        if (resultSet != null) {
            try {
                while (resultSet.next()) {
                    Product rs = new Product();
                    
                    rs.setId(resultSet.getInt("ID"));
                    rs.setName(resultSet.getString("NAME"));
                    rs.setDescription(resultSet.getString("DESCRIPTION"));
                    rs.setImgHref(resultSet.getString("IMGHREF"));
                    rs.setPrice(resultSet.getDouble("PRICE"));
                    rs.setQuantity(resultSet.getInt("QUANTITY"));

                    lists.add(rs);

                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return lists;
    }

    public static boolean AddProduct(Product product) {

        String sql = "INSERT INTO CLOTH  (NAME, DESCRIPTION, IMGHREF, PRICE, QUANTITY)" +
                "VALUES (?, ?, ?, ?, ?)";
        Connection connection = DatabaseConnector.getConnection();
        return DatabaseUtils.performDBUpdate(connection, sql, product.getName(), product.getDescription(), product.getImgHref(), String.valueOf(product.getPrice()), String.valueOf(product.getQuantity()));

    }

    public static boolean updateProduct(Product product) {

        String sql = "UPDATE TODOS SET NAME=?, DESCRIPTION=?, IMGHREF=?, PRICE=?, QUANTITY=? WHERE ID=?;";

        Connection connection = DatabaseConnector.getConnection();

        boolean updateStatus = DatabaseUtils.performDBUpdate(connection, sql, product.getName(), product.getDescription(), product.getImgHref(), String.valueOf(product.getPrice()), String.valueOf(product.getQuantity()));

        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return updateStatus;

    }

    public static boolean deleteTodo(Product product) {

        String sql = "DELETE FROM CLOTH WHERE ID=?;";

        Connection connection = DatabaseConnector.getConnection();

        boolean updateStatus = DatabaseUtils.performDBUpdate(connection, sql, String.valueOf(product.getId()));

        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return updateStatus;
    }
}
