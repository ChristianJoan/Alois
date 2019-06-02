/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Elmer_GS
 */
public class ConexionDB {

    String connectionUrl;
    Connection conect;
    Statement stmt;
    ResultSet rs;

    public ConexionDB() {
        try {
            connectionUrl = "jdbc:sqlserver://;database=Alois;integratedSecurity=true;";
            conect = DriverManager.getConnection(connectionUrl);
            System.out.println("Conexion establecida");
        } catch (Exception ex) {
            System.err.println("Error en conexion");
        }
    }

    public void alta(String SQL) {
        try{
            stmt = conect.createStatement();
            int count = stmt.executeUpdate(SQL);
            System.out.println("filas afectadas: " + count);
        }
        catch(Exception ex){
            System.err.println("Error: "+ex.getMessage());
        }
            
    }

    public void baja(String SQL) {
        try{
        stmt= conect.createStatement();
        stmt.executeUpdate(SQL);
        }
        catch(Exception ex){
            System.out.println("Error"+ex.getMessage());
        }
        
    }

    public void cambio(String table, String fvalue, String nvalues[]) {

    }

    public ResultSet consultas(String SQL) {
        try{
            stmt = conect.createStatement();
            rs = stmt.executeQuery(SQL);
            
        }
        catch(Exception ex){
            System.err.println("Error grave: "+ex.getMessage());
        }
        return rs;
    }

}
