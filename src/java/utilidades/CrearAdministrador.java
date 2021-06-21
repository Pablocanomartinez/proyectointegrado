/*
 * Servlet CrearAdministrador.
 * Crea el administrador Por Defecto
 */
package utilidades;

import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.EntrenadorJpaController;
import modelo.entidades.Entrenador;

/**
 *
 * @author jose
 */
@WebServlet(name = "CrearAdministrador", urlPatterns = {"/CrearAdministrador"})
public class CrearAdministrador extends HttpServlet {

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
            Entrenador sant = new Entrenador();
            sant.setNombre("Administrador");
            sant.setApellidos("Administrador");
            sant.setLogin("admin");
            sant.setPassword("admin");
            sant.setAdministrador(true);
            String mensaje = "Se ha creado el Administrador";
            EntrenadorJpaController ejc = 
                    new EntrenadorJpaController(Persistence.createEntityManagerFactory("proyectointegradodawPU"));
            try {
                ejc.create(sant);
            } catch (Exception ex) {
                mensaje = "Se ha producido un error al crear el Administrador";
                System.err.println(ex.getClass().getName() + ":" + ex.getMessage());
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CrearAdministrador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>" + mensaje + "</h1>");
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
