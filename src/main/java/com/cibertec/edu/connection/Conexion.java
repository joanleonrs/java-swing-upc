/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cibertec.edu.connection;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author joanleonrs
 */
public class Conexion {
    protected java.sql.Connection connection;
    protected String driver = "com.mysql.jdbc.Driver";
    protected String url = "jdbc:mysql://" + "localhost:" + "3306/" + "gestioncomputo";
    protected String username = "root";
    protected String password = "Admin456";
    
    public java.sql.Connection getConexion() throws SQLException{
        if (connection == null) {
            try {
                Class.forName(driver);
                System.out.println("Class Driver ABC.");
                try {
                    connection = DriverManager.getConnection(url, username, password);
                    System.out.println("Conexión exitosa.");
                } catch (SQLException e) {
                    System.out.println("Conexión errónea; " + e);
                    System.exit(0);
                }
            } catch (Exception e) {
                System.out.println("Ocurrió un error con el Class Driver" + e);
                System.exit(0);
            }
        }
        return connection;
    }
}
