package modelo.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.entidades.Ejercicio.Dificultad;
import modelo.entidades.Ejercicio.Foco;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-06-21T02:32:21")
@StaticMetamodel(Ejercicio.class)
public class Ejercicio_ { 

    public static volatile SingularAttribute<Ejercicio, String> descripcion;
    public static volatile SingularAttribute<Ejercicio, Dificultad> nivelDificultad;
    public static volatile SingularAttribute<Ejercicio, Foco> foco;
    public static volatile SingularAttribute<Ejercicio, Long> id;
    public static volatile SingularAttribute<Ejercicio, String> nombre;
    public static volatile SingularAttribute<Ejercicio, String> linkvideo;

}