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
import modelo.entidades.Usuario;

/**
 *
 * @author pablo
 */
@WebServlet(name = "EditarUsuario", urlPatterns = {"/secure/EditarUsuario"})
public class EditarUsuario extends HttpServlet {

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

        Long id = Long.parseLong(request.getParameter("idUsuario"));
        Sistema sistema = (Sistema) request.getSession().getAttribute("sistema");
        Usuario usu = sistema.buscarUsuario(id);
        String error;

        if (usu == null) {
            error = "Se ha producido un error al intentar acceder al Usuario";
            request.setAttribute("error", error);
            getServletContext().getRequestDispatcher("/secure/usuarios.jsp").forward(request, response);
        }

        // Si recibimos los datos del formulario
        if (request.getParameter("actualizar") != null) {
            // Actualoizamos los datos del empleado
            usu.setNombre(request.getParameter("nombre"));
            usu.setApellidos(request.getParameter("apellidos"));
            usu.setEmail(request.getParameter("email"));

            usu.setRutina(sistema.buscarRutina(Long.parseLong(request.getParameter("rutina"))));
            usu.setEntrenador(sistema.buscarEntrenador(Long.parseLong(request.getParameter("entrenadorusu"))));
            if (!request.getParameter("tarifa").isEmpty() && request.getParameter("tarifa").equalsIgnoreCase("INDIVIDUAL")) {
                usu.setTarifa(Usuario.Tarifa.INDIVIDUAL);
            } else {
                usu.setTarifa(Usuario.Tarifa.GRUPAL);
            }

            try {
                sistema.actualizarUsuario(usu);
            } catch (Exception e) {
                error = "Error. Al actulizar el usuario";
                request.setAttribute("error", error);
                getServletContext().getRequestDispatcher("/secure/editarUsuario.jsp").forward(request, response);
                return;
            }
            String mensaje = "Se ha actulizado correctamente el usuario";
            response.sendRedirect(response.encodeRedirectURL("usuarios.jsp?mensaje=" + mensaje));
        } else {
            if (request.getParameter("eliminar") != null) {
                try {
                    sistema.eliminarUsuario(id);
                } catch (Exception e) {
                    error = "No se puede eliminar el usuario";
                    request.setAttribute("error", error);
                    getServletContext().getRequestDispatcher("/secure/homeEntrenador.jsp").forward(request, response);
                    return;
                }
                String mensaje = "Se ha eliminado correctamen el usuario";
                response.sendRedirect(response.encodeRedirectURL("usuarios.jsp?mensaje=" + mensaje));
            } else {
                // Buscamos el empleado y le pasamos los datos a la vista
                request.setAttribute("id", usu.getId());
                request.setAttribute("nombre", usu.getNombre());
                request.setAttribute("apellidos", usu.getApellidos());
                request.setAttribute("email", usu.getEmail());
                request.setAttribute("rutina", usu.getRutina());
                request.setAttribute("entrenadorusu", usu.getEntrenador());
                request.setAttribute("tarifa", usu.getTarifa());
                getServletContext().getRequestDispatcher("/secure/editarUsuario.jsp").forward(request, response);
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
