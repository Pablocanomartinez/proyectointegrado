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
import modelo.entidades.Rutina;

/**
 *
 * @author pablo
 */
@WebServlet(name = "EliminarEntrenador", urlPatterns = {"/secure/EliminarEntrenador"})
public class EliminarEntrenador extends HttpServlet {

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

        Long id = Long.parseLong(request.getParameter("entreId"));
        Sistema sistema = (Sistema) request.getSession().getAttribute("sistema");
        Entrenador entre = sistema.buscarEntrenador(id);
        String error;

        if (entre == null) {
            error = "Se ha producido un error al intentar recupererar el entrenador";
            request.setAttribute("error", error);
            getServletContext().getRequestDispatcher("/secure/entrenadores.jsp").forward(request, response);
            return;
        }
        try {
            sistema.eliminarEntrenador(id);
        } catch (Exception e) {
            error = "No se puede eliminar el entrenador";
            request.setAttribute("error", error);
            getServletContext().getRequestDispatcher("/secure/entrenadores.jsp").forward(request, response);
            return;
        }
        String mensaje = "Se ha eliminado correctamente el entrenador";
        response.sendRedirect(response.encodeRedirectURL("entrenadores.jsp?mensaje=" + mensaje));
        return;
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
