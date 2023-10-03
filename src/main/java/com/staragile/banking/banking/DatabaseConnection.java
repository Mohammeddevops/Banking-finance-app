package com.staragile.banking.banking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static void main(String[] args) {
        Connection conn = null;
        try {
            // Establish a connection to the H2 database
            conn = DriverManager.getConnection("jdbc:h2:file:C:/Users/user/test", "ahmad", "ahmad");

            // Perform database operations here
            // You can execute SQL queries using this connection.

            // Close the connection when done
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
