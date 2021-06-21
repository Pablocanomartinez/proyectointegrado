/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.entidades;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author pablo
 */
@Entity
public class Ejercicio implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @Column(length = 50, unique = true)
    private String nombre;
    @Column(length = 500)
    private String descripcion;
    @Column(length = 500)
    private String linkvideo;
    @Column
    private Dificultad nivelDificultad;
    @Column
    private Foco foco;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Dificultad getNivelDificultad() {
        return nivelDificultad;
    }

    public void setNivelDificultad(Dificultad nivelDificultad) {
        this.nivelDificultad = nivelDificultad;
    }

    public Foco getFoco() {
        return foco;
    }

    public void setFoco(Foco foco) {
        this.foco = foco;
    }

    public String getLinkvideo() {
        return linkvideo;
    }

    public void setLinkvideo(String linkvideo) {
        this.linkvideo = linkvideo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ejercicio)) {
            return false;
        }
        Ejercicio other = (Ejercicio) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.entidades.Ejercicio[ id=" + id + " ]";
    }
    
    public enum Foco {
        TORSO, 
        PIERNA,
        CARDIO
    }
    
    public enum Dificultad {
        BAJO, 
        MEDIO,
        ALTO
    }
}
