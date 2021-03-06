/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***Área de importación***/
import Modelo.Persona;       //Tabla
import Modelo.Usuario;
import Modelo.UsuarioModel; //Método insertar usuario
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author Gianmarco
 */
public class ServletUsuario extends HttpServlet {
    
    UsuarioModel usumo = new UsuarioModel();
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
           try (PrintWriter out = response.getWriter()) {
               
               Persona per = new Persona(); //Instancia
               
              if(request.getParameter("btnRegistrar")!=null)
              {
                  per.setNombre(request.getParameter("txtNombre"));
                  per.setApellidos(request.getParameter("txtApellidos"));
                  
                  DateFormat f = new SimpleDateFormat("yyyy-MM-dd");
                  
                  try {
                      per.setFechaNac((Date) f.parse(request.getParameter("txtFechaNac")));
                  } catch (Exception e) {
                      System.out.println("ServletUsuario.Date" + e.getMessage());
                  }
                  
                  per.setEdad(Integer.parseInt(request.getParameter("txtEdad")));
                  per.setGenero(request.getParameter("cboGenero"));
                  per.setCorreo(request.getParameter("txtCorreo"));
                  //Composición
                  Usuario usu = new Usuario();
                  int idUsuario = Integer.parseInt(request.getParameter("txtUsuario"));
                  
                  usu.setId(idUsuario);
                  per.setIdUsuario(usu);
                  
                  usumo.insertarUsuario(per);
                  
                  response.sendRedirect("principal.jsp");
              }

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
