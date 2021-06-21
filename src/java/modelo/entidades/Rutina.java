/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.entidades;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;

/**
 *
 * @author pablo
 */
@Entity
public class Rutina implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

 
    @Column(length = 50, unique = true)
    private String nombre;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date fechaCreacion;
    @ManyToOne
    @JoinColumn(name = "entrenador")
    private Entrenador entrenador;
    
    //revisar por listas
    
    @ManyToOne
    @JoinColumn(name = "ejercicioLunes1")
    private Ejercicio ejercicioLunes1;
    @ManyToOne
    @JoinColumn(name = "ejercicioLunes2")
    private Ejercicio ejercicioLunes2;
    @ManyToOne
    @JoinColumn(name = "ejercicioLunes3")
    private Ejercicio ejercicioLunes3;
    @ManyToOne
    @JoinColumn(name = "ejercicioLunes4")
    private Ejercicio ejercicioLunes4;
    @ManyToOne
    @JoinColumn(name = "ejercicioLunes5")
    private Ejercicio ejercicioLunes5;
    
    @ManyToOne
    @JoinColumn(name = "ejercicioMartes1")
    private Ejercicio ejercicioMartes1;
    @ManyToOne
    @JoinColumn(name = "ejercicioMartes2")
    private Ejercicio ejercicioMartes2;
    @ManyToOne
    @JoinColumn(name = "ejercicioMartes3")
    private Ejercicio ejercicioMartes3;
    @ManyToOne
    @JoinColumn(name = "ejercicioMartes4")
    private Ejercicio ejercicioMartes4;
    @ManyToOne
    @JoinColumn(name = "ejercicioMartes5")
    private Ejercicio ejercicioMartes5;
    
    @ManyToOne
    @JoinColumn(name = "ejercicioMiercoles1")
    private Ejercicio ejercicioMiercoles1;
    @ManyToOne
    @JoinColumn(name = "ejercicioMiercoles2")
    private Ejercicio ejercicioMiercoles2;
    @ManyToOne
    @JoinColumn(name = "ejercicioMiercoles3")
    private Ejercicio ejercicioMiercoles3;
    @ManyToOne
    @JoinColumn(name = "ejercicioMiercoles4")
    private Ejercicio ejercicioMiercoles4;
    @ManyToOne
    @JoinColumn(name = "ejercicioMiercoles5")
    private Ejercicio ejercicioMiercoles5;
    
    @ManyToOne
    @JoinColumn(name = "ejercicioJueves1")
    private Ejercicio ejercicioJueves1;
    @ManyToOne
    @JoinColumn(name = "ejercicioJueves2")
    private Ejercicio ejercicioJueves2;
    @ManyToOne
    @JoinColumn(name = "ejercicioJueves3")
    private Ejercicio ejercicioJueves3;
    @ManyToOne
    @JoinColumn(name = "ejercicioJueves4")
    private Ejercicio ejercicioJueves4;
    @ManyToOne
    @JoinColumn(name = "ejercicioJueves5")
    private Ejercicio ejercicioJueves5;
    
    @ManyToOne
    @JoinColumn(name = "ejercicioViernes1")
    private Ejercicio ejercicioViernes1;
    @ManyToOne
    @JoinColumn(name = "ejercicioViernes2")
    private Ejercicio ejercicioViernes2;
    @ManyToOne
    @JoinColumn(name = "ejercicioViernes3")
    private Ejercicio ejercicioViernes3;
    @ManyToOne
    @JoinColumn(name = "ejercicioViernes4")
    private Ejercicio ejercicioViernes4;
    @ManyToOne
    @JoinColumn(name = "ejercicioViernes5")
    private Ejercicio ejercicioViernes5;
    
    @ManyToOne
    @JoinColumn(name = "ejercicioSabado1")
    private Ejercicio ejercicioSabado1;
    @ManyToOne
    @JoinColumn(name = "ejercicioSabado2")
    private Ejercicio ejercicioSabado2;
    @ManyToOne
    @JoinColumn(name = "ejercicioSabado3")
    private Ejercicio ejercicioSabado3;
    @ManyToOne
    @JoinColumn(name = "ejercicioSabado4")
    private Ejercicio ejercicioSabado4;
    @ManyToOne
    @JoinColumn(name = "ejercicioSabado5")
    private Ejercicio ejercicioSabado5;
    

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

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Entrenador getEntrenador() {
        return entrenador;
    }

    public void setEntrenador(Entrenador entrenador) {
        this.entrenador = entrenador;
    }

    public Ejercicio getEjercicioLunes1() {
        return ejercicioLunes1;
    }

    public void setEjercicioLunes1(Ejercicio ejercicioLunes1) {
        this.ejercicioLunes1 = ejercicioLunes1;
    }

    public Ejercicio getEjercicioLunes2() {
        return ejercicioLunes2;
    }

    public void setEjercicioLunes2(Ejercicio ejercicioLunes2) {
        this.ejercicioLunes2 = ejercicioLunes2;
    }

    public Ejercicio getEjercicioLunes3() {
        return ejercicioLunes3;
    }

    public void setEjercicioLunes3(Ejercicio ejercicioLunes3) {
        this.ejercicioLunes3 = ejercicioLunes3;
    }

    public Ejercicio getEjercicioLunes4() {
        return ejercicioLunes4;
    }

    public void setEjercicioLunes4(Ejercicio ejercicioLunes4) {
        this.ejercicioLunes4 = ejercicioLunes4;
    }

    public Ejercicio getEjercicioLunes5() {
        return ejercicioLunes5;
    }

    public void setEjercicioLunes5(Ejercicio ejercicioLunes5) {
        this.ejercicioLunes5 = ejercicioLunes5;
    }

    public Ejercicio getEjercicioMartes1() {
        return ejercicioMartes1;
    }

    public void setEjercicioMartes1(Ejercicio ejercicioMartes1) {
        this.ejercicioMartes1 = ejercicioMartes1;
    }

    public Ejercicio getEjercicioMartes2() {
        return ejercicioMartes2;
    }

    public void setEjercicioMartes2(Ejercicio ejercicioMartes2) {
        this.ejercicioMartes2 = ejercicioMartes2;
    }

    public Ejercicio getEjercicioMartes3() {
        return ejercicioMartes3;
    }

    public void setEjercicioMartes3(Ejercicio ejercicioMartes3) {
        this.ejercicioMartes3 = ejercicioMartes3;
    }

    public Ejercicio getEjercicioMartes4() {
        return ejercicioMartes4;
    }

    public void setEjercicioMartes4(Ejercicio ejercicioMartes4) {
        this.ejercicioMartes4 = ejercicioMartes4;
    }

    public Ejercicio getEjercicioMartes5() {
        return ejercicioMartes5;
    }

    public void setEjercicioMartes5(Ejercicio ejercicioMartes5) {
        this.ejercicioMartes5 = ejercicioMartes5;
    }

    public Ejercicio getEjercicioMiercoles1() {
        return ejercicioMiercoles1;
    }

    public void setEjercicioMiercoles1(Ejercicio ejercicioMiercoles1) {
        this.ejercicioMiercoles1 = ejercicioMiercoles1;
    }

    public Ejercicio getEjercicioMiercoles2() {
        return ejercicioMiercoles2;
    }

    public void setEjercicioMiercoles2(Ejercicio ejercicioMiercoles2) {
        this.ejercicioMiercoles2 = ejercicioMiercoles2;
    }

    public Ejercicio getEjercicioMiercoles3() {
        return ejercicioMiercoles3;
    }

    public void setEjercicioMiercoles3(Ejercicio ejercicioMiercoles3) {
        this.ejercicioMiercoles3 = ejercicioMiercoles3;
    }

    public Ejercicio getEjercicioMiercoles4() {
        return ejercicioMiercoles4;
    }

    public void setEjercicioMiercoles4(Ejercicio ejercicioMiercoles4) {
        this.ejercicioMiercoles4 = ejercicioMiercoles4;
    }

    public Ejercicio getEjercicioMiercoles5() {
        return ejercicioMiercoles5;
    }

    public void setEjercicioMiercoles5(Ejercicio ejercicioMiercoles5) {
        this.ejercicioMiercoles5 = ejercicioMiercoles5;
    }

    public Ejercicio getEjercicioJueves1() {
        return ejercicioJueves1;
    }

    public void setEjercicioJueves1(Ejercicio ejercicioJueves1) {
        this.ejercicioJueves1 = ejercicioJueves1;
    }

    public Ejercicio getEjercicioJueves2() {
        return ejercicioJueves2;
    }

    public void setEjercicioJueves2(Ejercicio ejercicioJueves2) {
        this.ejercicioJueves2 = ejercicioJueves2;
    }

    public Ejercicio getEjercicioJueves3() {
        return ejercicioJueves3;
    }

    public void setEjercicioJueves3(Ejercicio ejercicioJueves3) {
        this.ejercicioJueves3 = ejercicioJueves3;
    }

    public Ejercicio getEjercicioJueves4() {
        return ejercicioJueves4;
    }

    public void setEjercicioJueves4(Ejercicio ejercicioJueves4) {
        this.ejercicioJueves4 = ejercicioJueves4;
    }

    public Ejercicio getEjercicioJueves5() {
        return ejercicioJueves5;
    }

    public void setEjercicioJueves5(Ejercicio ejercicioJueves5) {
        this.ejercicioJueves5 = ejercicioJueves5;
    }

    public Ejercicio getEjercicioViernes1() {
        return ejercicioViernes1;
    }

    public void setEjercicioViernes1(Ejercicio ejercicioViernes1) {
        this.ejercicioViernes1 = ejercicioViernes1;
    }

    public Ejercicio getEjercicioViernes2() {
        return ejercicioViernes2;
    }

    public void setEjercicioViernes2(Ejercicio ejercicioViernes2) {
        this.ejercicioViernes2 = ejercicioViernes2;
    }

    public Ejercicio getEjercicioViernes3() {
        return ejercicioViernes3;
    }

    public void setEjercicioViernes3(Ejercicio ejercicioViernes3) {
        this.ejercicioViernes3 = ejercicioViernes3;
    }

    public Ejercicio getEjercicioViernes4() {
        return ejercicioViernes4;
    }

    public void setEjercicioViernes4(Ejercicio ejercicioViernes4) {
        this.ejercicioViernes4 = ejercicioViernes4;
    }

    public Ejercicio getEjercicioViernes5() {
        return ejercicioViernes5;
    }

    public void setEjercicioViernes5(Ejercicio ejercicioViernes5) {
        this.ejercicioViernes5 = ejercicioViernes5;
    }

    public Ejercicio getEjercicioSabado1() {
        return ejercicioSabado1;
    }

    public void setEjercicioSabado1(Ejercicio ejercicioSabado1) {
        this.ejercicioSabado1 = ejercicioSabado1;
    }

    public Ejercicio getEjercicioSabado2() {
        return ejercicioSabado2;
    }

    public void setEjercicioSabado2(Ejercicio ejercicioSabado2) {
        this.ejercicioSabado2 = ejercicioSabado2;
    }

    public Ejercicio getEjercicioSabado3() {
        return ejercicioSabado3;
    }

    public void setEjercicioSabado3(Ejercicio ejercicioSabado3) {
        this.ejercicioSabado3 = ejercicioSabado3;
    }

    public Ejercicio getEjercicioSabado4() {
        return ejercicioSabado4;
    }

    public void setEjercicioSabado4(Ejercicio ejercicioSabado4) {
        this.ejercicioSabado4 = ejercicioSabado4;
    }

    public Ejercicio getEjercicioSabado5() {
        return ejercicioSabado5;
    }

    public void setEjercicioSabado5(Ejercicio ejercicioSabado5) {
        this.ejercicioSabado5 = ejercicioSabado5;
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
        if (!(object instanceof Rutina)) {
            return false;
        }
        Rutina other = (Rutina) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.entidades.Rutina[ id=" + id + " ]";
    }
    
}
