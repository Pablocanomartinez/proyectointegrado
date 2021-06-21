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
import modelo.entidades.Entrenador;
import modelo.entidades.Usuario;

/**
 *
 * @author pablo
 */
@WebServlet(name = "CompletarRegistro", urlPatterns = {"/CompletarRegistro"})
public class CompletarRegistro extends HttpServlet {

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
        Sistema sistema = (Sistema) request.getSession().getAttribute("sistema");
        Usuario usu = (Usuario) request.getSession().getAttribute("usuario");

        if (usu == null) {
            String error = "Se ha producido un error al intentar actualizar/acceder al Usuario";
            request.setAttribute("error", error);
            getServletContext().getRequestDispatcher("/inicio.jsp").forward(request, response);
        }
        String error = null;
        String entrenador = request.getParameter("elegirEntrenador");
        String tarifa = request.getParameter("exampleRadios");

        if (!entrenador.isEmpty()) {
            Long entrenadorId = Long.parseLong(entrenador);
            Entrenador objectEntrenador = sistema.buscarEntrenador(entrenadorId);
            usu.setEntrenador(objectEntrenador);

            if (!tarifa.isEmpty() && tarifa.equalsIgnoreCase("INDIVIDUAL")) {
                usu.setTarifa(Usuario.Tarifa.INDIVIDUAL);
            } else {
                usu.setTarifa(Usuario.Tarifa.GRUPAL);
            }

        } else {

        }

        try {
            usu.setEnabled(true);
            sistema.actualizarUsuario(usu);
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + " : " + e.getMessage());
        }
        String mensaje = "Se ha completado el Registro exitosamente";
        response.sendRedirect(response.encodeRedirectURL("secure/home.jsp?mensaje=" + mensaje));
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
