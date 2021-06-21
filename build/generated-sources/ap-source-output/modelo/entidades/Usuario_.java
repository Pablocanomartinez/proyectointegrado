package modelo.entidades;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.entidades.Entrenador;
import modelo.entidades.Rutina;
import modelo.entidades.Usuario.Tarifa;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-06-21T02:32:21")
@StaticMetamodel(Usuario.class)
public class Usuario_ { 

    public static volatile SingularAttribute<Usuario, String> apellidos;
    public static volatile SingularAttribute<Usuario, Tarifa> tarifa;
    public static volatile SingularAttribute<Usuario, String> password;
    public static volatile SingularAttribute<Usuario, Entrenador> entrenador;
    public static volatile SingularAttribute<Usuario, Rutina> rutina;
    public static volatile SingularAttribute<Usuario, Date> fechaNacimiento;
    public static volatile SingularAttribute<Usuario, Long> id;
    public static volatile SingularAttribute<Usuario, String> nombre;
    public static volatile SingularAttribute<Usuario, String> email;
    public static volatile SingularAttribute<Usuario, Boolean> enabled;

}