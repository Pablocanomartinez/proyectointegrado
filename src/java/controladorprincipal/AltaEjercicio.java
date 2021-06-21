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
import modelo.Sistema;
import modelo.entidades.Ejercicio;
import modelo.entidades.Ejercicio.Dificultad;
import modelo.entidades.Ejercicio.Foco;

/**
 *
 * @author pablo
 */
@WebServlet(name = "AltaEjercicio", urlPatterns = {"/secure/AltaEjercicio"})
public class AltaEjercicio extends HttpServlet {

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
        String titulo = request.getParameter("titulo");
        String descripcion = request.getParameter("descripcion");
        String linkvideo = request.getParameter("linkvideo");
        Integer focoaux = Integer.parseInt(request.getParameter("foco"));
        Integer dificultadaux = Integer.parseInt(request.getParameter("dificultad"));

        Ejercicio nuevo = new Ejercicio();
        nuevo.setLinkvideo(linkvideo);
        nuevo.setDescripcion(descripcion);
        nuevo.setNombre(titulo);

        switch (focoaux) {
            case 0:
                nuevo.setFoco(Foco.TORSO);
                break;
            case 1:
                nuevo.setFoco(Foco.PIERNA);
                break;
            case 2:
                nuevo.setFoco(Foco.CARDIO);
                break;
        }

        switch (dificultadaux) {
            case 0:
                nuevo.setNivelDificultad(Dificultad.BAJO);
                break;
            case 1:
                nuevo.setNivelDificultad(Dificultad.MEDIO);
                break;
            case 2:
                nuevo.setNivelDificultad(Dificultad.ALTO);
                break;
        }
        Sistema sistema = (Sistema) request.getSession().getAttribute("sistema");
        try {
            sistema.altaEjercicio(nuevo);
        } catch (Exception ex) {
            error ="Ya existe un Ejercicio con ese Titulo: " + titulo;
        }
        if (error != null) {
            request.setAttribute("error", error);
            request.setAttribute("titulo", titulo);
            request.setAttribute("descripcion", descripcion);
            request.setAttribute("foco", focoaux);
            request.setAttribute("dificultad", dificultadaux);

            getServletContext().getRequestDispatcher("/secure/altaEjercicio.jsp").forward(request, response);
        } else {
            String mensaje = "Se ha creado un nuevo Ejercicio";
            response.sendRedirect(response.encodeRedirectURL("ejercicios.jsp?mensaje=" + mensaje));
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
