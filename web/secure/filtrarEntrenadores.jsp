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
            <th>Nombre</th><th>Apellidos</th><th>Administrador</th><th></th>
        </tr>
    </thead>
    <tbody class="bg-light">
        <c:forEach var="entre" items="${sistema.filtrarEntrenadores(param.filtro)}">
            <tr>
                <td class="entrenador">${entre.nombre}</td>
                <td class="entrenador">${entre.apellidos}</td>
                <td class="entrenador">${entre.administrador == false ? 'NO' : 'SI'}</td>
                <c:if test="${entrenador.administrador}">
                    <td>
                        <form action="EliminarEntrenador" method="POST">
                            <input type="hidden" name="entreId" value="${entre.id}">
                            <input type="submit" name="eliminar" value="" id="eliminar-${entre.id}" class="btn btn-sm btn-secondary" style="visibility: hidden">
                            <label for="eliminar-${entre.id}"class="btn btn-danger"><i class="fas fa-trash-alt"></i></label>
                        </form>
                    </td>
                </c:if>
            </tr>
        </c:forEach>
    </tbody>
</table>

