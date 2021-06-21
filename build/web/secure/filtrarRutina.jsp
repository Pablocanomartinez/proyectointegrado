<%-- 
    Document   : filtarPaciente
    Created on : 01-mar-2021, 13:18:43
    Author     : pablo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<table class="table">
    <thead class="thead-light">
        <tr>
            <th>Nombre</th><th>Fecha Creacion</th><th>Entrenador</th><th></th>
        </tr>
    </thead>
    <tbody class="bg-light">
        <c:forEach var="rutina" items="${sistema.filtrarRutinas(param.filtro)}">
            <tr>
                <td class="rutina">${rutina.nombre}</td>
                <td class="rutina"><fmt:formatDate value="${rutina.fechaCreacion}" pattern="dd/MM/yyyy" /></td>
                <td class="rutina">${rutina.entrenador.nombre} ${rutina.entrenador.apellidos}</td>
                <td>
                    <form action="EliminarRutina" method="POST">
                        <input type="hidden" name="rutinaId" value="${rutina.id}">
                        <input type="submit" name="eliminar" value="" id="eliminar-${rutina.id}" class="btn btn-sm btn-secondary" style="visibility: hidden">
                        <label for="eliminar-${rutina.id}"class="btn btn-danger"><i class="fas fa-trash-alt"></i></label>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

