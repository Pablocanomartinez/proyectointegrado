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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Sistema;
import modelo.entidades.Ejercicio;
import modelo.entidades.Ejercicio.Dificultad;
import modelo.entidades.Ejercicio.Foco;
import modelo.entidades.Rutina;

/**
 *
 * @author pablo
 */
@WebServlet(name = "AltaRutina", urlPatterns = {"/secure/AltaRutina"})
public class AltaRutina extends HttpServlet {

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
        Sistema sistema = (Sistema) request.getSession().getAttribute("sistema");
        String titulo = request.getParameter("titulo");
        Long entrenador = Long.parseLong(request.getParameter("id"));

        Rutina nuevo = new Rutina();
        nuevo.setNombre(titulo);
        nuevo.setEntrenador(sistema.buscarEntrenador(entrenador));
        nuevo.setFechaCreacion(new Date());

        nuevo.setEjercicioLunes1(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciol1"))));
        nuevo.setEjercicioLunes2(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciol2"))));
        nuevo.setEjercicioLunes3(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciol3"))));
        nuevo.setEjercicioLunes4(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciol4"))));
        nuevo.setEjercicioLunes5(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciol5"))));

        nuevo.setEjercicioMartes1(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciom1"))));
        nuevo.setEjercicioMartes2(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciom2"))));
        nuevo.setEjercicioMartes3(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciom3"))));
        nuevo.setEjercicioMartes4(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciom4"))));
        nuevo.setEjercicioMartes5(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciom5"))));

        nuevo.setEjercicioMiercoles1(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciox1"))));
        nuevo.setEjercicioMiercoles2(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciox2"))));
        nuevo.setEjercicioMiercoles3(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciox3"))));
        nuevo.setEjercicioMiercoles4(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciox4"))));
        nuevo.setEjercicioMiercoles5(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciox5"))));

        nuevo.setEjercicioJueves1(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicioj1"))));
        nuevo.setEjercicioJueves2(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicioj2"))));
        nuevo.setEjercicioJueves3(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicioj3"))));
        nuevo.setEjercicioJueves4(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicioj4"))));
        nuevo.setEjercicioJueves5(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicioj5"))));

        nuevo.setEjercicioViernes1(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciov1"))));
        nuevo.setEjercicioViernes2(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciov2"))));
        nuevo.setEjercicioViernes3(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciov3"))));
        nuevo.setEjercicioViernes4(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciov4"))));
        nuevo.setEjercicioViernes5(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejerciciov5"))));

        nuevo.setEjercicioSabado1(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicios1"))));
        nuevo.setEjercicioSabado2(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicios2"))));
        nuevo.setEjercicioSabado3(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicios3"))));
        nuevo.setEjercicioSabado4(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicios4"))));
        nuevo.setEjercicioSabado5(sistema.buscarEjercicio(Long.parseLong(request.getParameter("ejercicios5"))));
        try {
            sistema.altaRutina(nuevo);
        } catch (Exception ex) {
            error = "Ya existe una rutina con ese nombre: " + titulo;
        }
        if (error != null) {
            request.setAttribute("error", error);

            getServletContext().getRequestDispatcher("/secure/altaRutina.jsp").forward(request, response);
        } else {
            String mensaje = "Se ha creado un nuevo Rutina";
            response.sendRedirect(response.encodeRedirectURL("rutinas.jsp?mensaje=" + mensaje));
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
