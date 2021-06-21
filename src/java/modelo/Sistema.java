/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.persistence.Persistence;
import modelo.dao.EjercicioJpaController;
import modelo.dao.EntrenadorJpaController;
import modelo.dao.RutinaJpaController;
import modelo.dao.UsuarioJpaController;
import modelo.entidades.Ejercicio;
import modelo.entidades.Entrenador;
import modelo.entidades.Rutina;
import modelo.entidades.Usuario;

/**
 *
 * @author pablo
 */
public class Sistema implements Serializable {

    // Unidad de Persistencia
    public static final String PERSISTENCIA = "proyectointegradodawPU";

    //ENTRENADOR
    public List<Entrenador> getEntrenadores() {
        EntrenadorJpaController ejc = new EntrenadorJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        return ejc.findEntrenadorEntities();
    }

    public List<Entrenador> getEntrenadoresAlfabeticamente() {
        List<Entrenador> entrenadores = getEntrenadores();
        Collections.sort(entrenadores, (e1, e2)
                -> (e1.getApellidos() + e1.getNombre()).compareTo(e2.getApellidos() + e2.getNombre()));
        return entrenadores;
    }

    public void altaEntrenador(Entrenador entrenador) throws Exception {
        EntrenadorJpaController ejc = new EntrenadorJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.create(entrenador);
    }

    public Entrenador buscarEntrenador(Long id) {
        EntrenadorJpaController ejc = new EntrenadorJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        return ejc.findEntrenador(id);
    }

    public void actualizarEntrenador(Entrenador entrenador) throws Exception {
        EntrenadorJpaController ejc = new EntrenadorJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.edit(entrenador);
    }

    public void eliminarEntrenador(Long id) throws Exception {
        EntrenadorJpaController ejc = new EntrenadorJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.destroy(id);
    }

    //EJERCICIO
    public List<Ejercicio> filtrarEjercicios(String filtro) {
        List<Ejercicio> ejercicios = getEjercicios();
        List<Ejercicio> filtrados = new ArrayList();
        if (filtro.isEmpty()) {
            filtrados = ejercicios;
        } else {
            for (Ejercicio ejer : ejercicios) {
                if (ejer.getNombre().toLowerCase().contains(filtro.toLowerCase())) {
                    filtrados.add(ejer);
                }
            }
        }
        return filtrados;
    }
    
    public List<Ejercicio> getEjercicios() {
        EjercicioJpaController ejc = new EjercicioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        return ejc.findEjercicioEntities();
    }

    public List<Ejercicio> getEjerciciosAlfabeticamente() {
        List<Ejercicio> ejercicio = getEjercicios();
        Collections.sort(ejercicio, (e1, e2)
                -> (e1.getNombre()).compareTo(e2.getNombre()));
        return ejercicio;
    }

    public void altaEjercicio(Ejercicio ejercicio) throws Exception {
        EjercicioJpaController ejc = new EjercicioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.create(ejercicio);
    }

    public Ejercicio buscarEjercicio(Long id) {
        EjercicioJpaController ejc = new EjercicioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        return ejc.findEjercicio(id);
    }

    public void actualizarEjercicio(Ejercicio ejercicio) throws Exception {
        EjercicioJpaController ejc = new EjercicioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.edit(ejercicio);
    }

    public void eliminarEjercicio(Long id) throws Exception {
        EjercicioJpaController ejc = new EjercicioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.destroy(id);
    }

    //USUARIO
    public List<Usuario> filtrarUsuarios(String filtro) {
        List<Usuario> usuarios = getUsuarios();
        List<Usuario> filtrados = new ArrayList();
        if (filtro.isEmpty()) {
            filtrados = usuarios;
        } else {
            for (Usuario usu : usuarios) {
                if (usu.getNombre().toLowerCase().contains(filtro.toLowerCase()) || usu.getApellidos().toLowerCase().contains(filtro.toLowerCase()) || usu.getEmail().toLowerCase().contains(filtro.toLowerCase())) {
                    filtrados.add(usu);
                }
            }
        }
        return filtrados;
    }

    public List<Usuario> getUsuarios() {
        UsuarioJpaController ejc = new UsuarioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        return ejc.findUsuarioEntities();
    }

    public List<Usuario> getUsuarioAlfabeticamente() {
        List<Usuario> usuarios = getUsuarios();
        Collections.sort(usuarios, (e1, e2)
                -> (e1.getApellidos() + e1.getNombre()).compareTo(e2.getApellidos() + e2.getNombre()));
        return usuarios;
    }

    public void altaUsuario(Usuario usu) throws Exception {
        UsuarioJpaController ejc = new UsuarioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.create(usu);
    }

    public Usuario buscarUsuario(Long id) {
        UsuarioJpaController ejc = new UsuarioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        return ejc.findUsuario(id);
    }

    public void actualizarUsuario(Usuario usu) throws Exception {
        UsuarioJpaController ejc = new UsuarioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.edit(usu);
    }

    public void eliminarUsuario(Long id) throws Exception {
        UsuarioJpaController ejc = new UsuarioJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.destroy(id);
    }

    //Rutina
    
    public List<Rutina> filtrarRutinas(String filtro) {
        List<Rutina> rutinas = getRutinas();
        List<Rutina> filtrados = new ArrayList();
        if (filtro.isEmpty()) {
            filtrados = rutinas;
        } else {
            for (Rutina ruitna : rutinas) {
                if (ruitna.getNombre().toLowerCase().contains(filtro.toLowerCase())) {
                    filtrados.add(ruitna);
                }
            }
        }
        return filtrados;
    }
    
    public List<Rutina> getRutinas() {
        RutinaJpaController ejc = new RutinaJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        return ejc.findRutinaEntities();
    }

    public void altaRutina(Rutina rutina) throws Exception {
        RutinaJpaController ejc = new RutinaJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.create(rutina);
    }

    public Rutina buscarRutina(Long id) {
        RutinaJpaController ejc = new RutinaJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        return ejc.findRutina(id);
    }

    public void actualizarRutina(Rutina rutina) throws Exception {
        RutinaJpaController ejc = new RutinaJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.edit(rutina);
    }

    public void eliminarRutina(Long id) throws Exception {
        RutinaJpaController ejc = new RutinaJpaController(Persistence.createEntityManagerFactory(PERSISTENCIA));
        ejc.destroy(id);
    }
}
