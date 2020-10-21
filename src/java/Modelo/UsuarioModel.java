
package Modelo;
/***Área de importación***/
import java.sql.Connection; //Interfaz:Implementar con el método conectar
import Config.Conexion; //Clase:Método conectar
import java.sql.CallableStatement; //Interfaz:Implementar con un procedimiento almacenado


/**
 *
 * @author Gianmarco
 */
public class UsuarioModel {
    public void insertarUsuario(Persona per, Usuario usu)
    {
        //Conexión
        Conexion cn = new Conexion();
        Connection con = cn.conectar();
        
        String pa = "{call pa_crearUsuario(?, ?, ?, ?, ?, ?, ?, ?)}"; //Procedimiento almacenado con parametros
    
        CallableStatement cs = null; //Variable de referencia
        
        try {
            cs = con.prepareCall(pa); //Cargar el pa en el objeto cs con la conexión BD activa
            //Convertir los valors Java en valores SQL
            
            
            
        } catch (Exception e) {
        }
    
    }
    
}
