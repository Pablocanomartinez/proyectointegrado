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
@WebServlet(name = "EditarEjercicio", urlPatterns = {"/secure/EditarEjercicio"})
public class EditarEjercicio extends HttpServlet {

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
        String error;

        if (ejercicio == null) {
            error = "Se ha producido un error al intentar acceder al Ejercicio";
            request.setAttribute("error", error);
            getServletContext().getRequestDispatcher("/secure/ejercicios.jsp").forward(request, response);
        }

        // Si recibimos los datos del formulario
        if (request.getParameter("actualizar") != null) {
            // Actualoizamos los datos del empleado
            ejercicio.setNombre(request.getParameter("nombre"));
            ejercicio.setDescripcion(request.getParameter("desc"));
            ejercicio.setLinkvideo(request.getParameter("linkv"));
            Integer focoaux = Integer.parseInt(request.getParameter("foco"));
            Integer dificultadaux = Integer.parseInt(request.getParameter("dificultad"));
            switch (focoaux) {
                case 0:
                    ejercicio.setFoco(Ejercicio.Foco.TORSO);
                    break;
                case 1:
                    ejercicio.setFoco(Ejercicio.Foco.PIERNA);
                    break;
                case 2:
                    ejercicio.setFoco(Ejercicio.Foco.CARDIO);
                    break;
            }

            switch (dificultadaux) {
                case 0:
                    ejercicio.setNivelDificultad(Ejercicio.Dificultad.BAJO);
                    break;
                case 1:
                    ejercicio.setNivelDificultad(Ejercicio.Dificultad.MEDIO);
                    break;
                case 2:
                    ejercicio.setNivelDificultad(Ejercicio.Dificultad.ALTO);
                    break;
            }
            try {
                sistema.actualizarEjercicio(ejercicio);
            } catch (Exception e) {
                error = "Error. Ya existe un Ejercicio con ese Titulo: " + ejercicio.getNombre();
                request.setAttribute("error", error);
                getServletContext().getRequestDispatcher("/secure/ejercicios.jsp").forward(request, response);
                return;
            }
            String mensaje = "Se ha actulizado correctamente el ejercicio";
            response.sendRedirect(response.encodeRedirectURL("ejercicios.jsp?mensaje=" + mensaje));
            return;
        } else {
            if (request.getParameter("eliminar") != null) {
                try {
                    //MIRAR SI TIENE ALGUNA VACUNACION
                    sistema.eliminarEjercicio(id);
                } catch (Exception e) {
                    error = "No se puede eliminar el Ejercicio";
                    request.setAttribute("error", error);
                    getServletContext().getRequestDispatcher("/secure/ejercicios.jsp").forward(request, response);
                    return;
                }
                String mensaje = "Se ha eliminado correctamen el ejercicio";
                response.sendRedirect(response.encodeRedirectURL("ejercicios.jsp?mensaje=" + mensaje));
                return;
            } else {
                // Buscamos el empleado y le pasamos los datos a la vista
                request.setAttribute("id", ejercicio.getId());
                request.setAttribute("nombre", ejercicio.getNombre());
                request.setAttribute("desc", ejercicio.getDescripcion());
                request.setAttribute("linkv", ejercicio.getLinkvideo());
                request.setAttribute("foco", ejercicio.getFoco());
                request.setAttribute("dificultad", ejercicio.getNivelDificultad());
                getServletContext().getRequestDispatcher("/secure/editarEjercicio.jsp").forward(request, response);
            }
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
