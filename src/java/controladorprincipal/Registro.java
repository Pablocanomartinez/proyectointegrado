/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorprincipal;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Sistema;
import modelo.entidades.Usuario;

/**
 *
 * @author pablo
 */
@WebServlet(name = "Registro", urlPatterns = {"/Registro"})
public class Registro extends HttpServlet {

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
        String error = null;
        String nombre = request.getParameter("inputNameResgistro");
        String apellidos = request.getParameter("inputApellidoResgistro");
        String fnacimiento = request.getParameter("inputFechaResgistro");
        String correo = request.getParameter("inputEmailRegistro");
        String password = request.getParameter("inputPassRegistro2");

        Usuario nuevo = new Usuario();
        nuevo.setNombre(nombre);
        nuevo.setApellidos(apellidos);

        System.out.println("fecha: "+fnacimiento);
        Date date1 = null;
        try {
            date1 = new SimpleDateFormat("yyyy-MM-dd").parse(fnacimiento);
        } catch (ParseException ex) {
            error = "Error al introducir la fecha";
        }
        nuevo.setFechaNacimiento(date1);
        nuevo.setEmail(correo);
        nuevo.setPassword(password);
        
        Sistema sistema = new Sistema();
        try {

            sistema.altaUsuario(nuevo);
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", nuevo);
            sesion.setAttribute("sistema", sistema);
        } catch (Exception ex) {
            error = "Ya existe un Usuario con ese Email: " + correo;
        }
        if (error != null) {
            request.setAttribute("error", error);

            getServletContext().getRequestDispatcher("/inicio.jsp").forward(request, response);
        } else {
            response.sendRedirect(response.encodeRedirectURL("completarRegistro.jsp"));
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
        processRequest(request, response);
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
