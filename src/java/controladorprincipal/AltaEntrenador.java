/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladorprincipal;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Sistema;
import modelo.entidades.Ejercicio;
import modelo.entidades.Entrenador;

/**
 *
 * @author pablo
 */
@WebServlet(name = "AltaEntrenador", urlPatterns = {"/secure/AltaEntrenador"})
public class AltaEntrenador extends HttpServlet {

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
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String login = request.getParameter("login");
        String pass = request.getParameter("pass");
        int admin = Integer.parseInt(request.getParameter("exampleRadios"));

        Entrenador entre = new Entrenador();
        entre.setNombre(nombre);
        entre.setApellidos(apellidos);
        entre.setLogin(login);
        entre.setPassword(pass);
        if (admin == 1) {
            entre.setAdministrador(true);
        } else {
            entre.setAdministrador(false);
        }
        Sistema sistema = (Sistema) request.getSession().getAttribute("sistema");
        try {
            sistema.altaEntrenador(entre);
        } catch (Exception ex) {
            error = "Ya existe un Entrenador con esos datos";
        }
        if (error != null) {
            request.setAttribute("error", error);
            request.setAttribute("nombre", nombre);
            request.setAttribute("apellidos", apellidos);
            request.setAttribute("login", login);
            getServletContext().getRequestDispatcher("/secure/altaEntrenador.jsp").forward(request, response);
        } else {
            String mensaje = "Se ha creado un nuevo Entrenador";
            response.sendRedirect(response.encodeRedirectURL("entrenadores.jsp?mensaje=" + mensaje));
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
