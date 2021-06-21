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

/**
 *
 * @author pablo
 */
@WebServlet(name = "VerEjercicio", urlPatterns = {"/secure/VerEjercicio"})
public class VerEjercicio extends HttpServlet {

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
        Long id = Long.parseLong(request.getParameter("idEjercicio"));
        Sistema sistema = (Sistema) request.getSession().getAttribute("sistema");
        Ejercicio ejercicio = sistema.buscarEjercicio(id);
        if (ejercicio == null) {
            String error = "Se ha producido un error al intentar acceder al Ejercicio";
            request.setAttribute("error", error);
            getServletContext().getRequestDispatcher("home.jsp").forward(request, response);
        }

        request.setAttribute("id", ejercicio.getId());
        request.setAttribute("nombre", ejercicio.getNombre());
        request.setAttribute("descripcion", ejercicio.getDescripcion());
        request.setAttribute("foco", ejercicio.getFoco());
        request.setAttribute("dificultad", ejercicio.getNivelDificultad());
        request.setAttribute("linkvideo", ejercicio.getLinkvideo());
        getServletContext().getRequestDispatcher("/secure/verEjercicio.jsp").forward(request, response);
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
