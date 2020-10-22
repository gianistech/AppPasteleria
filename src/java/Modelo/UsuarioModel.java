
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
    public void insertarUsuario(Persona per)
    {
        //Conexión
        Conexion cn = new Conexion();
        Connection con = cn.conectar();
        
        String pa = "{call pa_crearUsuario(?, ?, ?, ?, ?, ?, ?, ?)}"; //Procedimiento almacenado con parametros
    
        CallableStatement cs = null; //Variable de referencia
        
        try {
            cs = con.prepareCall(pa); //Cargar el pa en el objeto cs con la conexión BD activa
            //Convertir los valores Java en valores SQL
            cs.setString(1, per.getNombre());
            cs.setString(2, per.getApellidos());
            cs.setDate(3, per.getFechaNac());
            cs.setInt(4, per.getEdad());
            cs.setString(5, per.getGenero());
            cs.setString(6, per.getCorreo());
            //Composición
            cs.setString(7, per.getIdUsuario().getUsuario());
            cs.setString(8, per.getIdUsuario().getClave());
            
            cs.execute(); //Ejecutar el pa en el objeto cs contra la BD
            //Liberar recursos de la memoria para...
            cs.close();
            con.close();
            
        } catch (Exception e) {
            System.out.println("UsuarioModel.insertarUsuario" + e.getMessage());
        }
    
    }
    
}
