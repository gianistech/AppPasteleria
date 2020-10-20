/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

/***Área de importación***/
import java.sql.Connection;//      Interfaz:Implementar con la sesión BD
import java.sql.DriverManager;//      Clase:Carga JDBC Driver y crea la sesión BD
import java.sql.SQLException;//       Clase:Envia mensajes de error si una exepción ocurre


/**
 *
 * @author Gianmarco
 */
public class Conexion {
    public Connection conectar()
    {
        Connection cn = null; //Variable referencia
        
        String url = "jdbc:mysql://localhost:3306/BDAppPasteleria?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; //Conexión BD
        
        try {
            Class.forName("com.mysql.jdbc.Driver"); //Señalar la clase del JDBC Driver a cargar
           
            System.out.println("JDBC Driver Cargado");
        } catch (ClassNotFoundException e) {
            System.out.println("Error JDBC Driver no se pudo cargar" + e.getMessage());
        }
        try {
            cn = DriverManager.getConnection(url, "root", "mysqladmin");
            
            System.out.println("Conexión exitosa");
        } catch (SQLException e) {
            System.out.println("Error conexión fallida" + e.getMessage());
        }
        return cn; //Objeto envoltura
    }
    
}
