<%-- 
    Document   : filtarPaciente
    Created on : 01-mar-2021, 13:18:43
    Author     : pablo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="row row-cols-1 row-cols-sm-2  row-cols-md-3 g-4">
    <c:forEach var="ejer" items="${sistema.filtrarEjercicios(param.filtro)}">
        <div class="col ">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">${ejer.nombre}</h5>
                    <h6 class="card-subtitle mb-2 text-muted">${ejer.foco} - ${ejer.nivelDificultad}</h6>
                    <p class="card-text">${ejer.descripcion}</p>
                    <form action=VerEjercicio" method="POST">
                        <input type="hidden" name="idEjercicio" value="${ejer.id}">
                        <input type="submit" name="seleccionar" value="Ver ejercicio" class="btn btn-danger">
                    </form>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

