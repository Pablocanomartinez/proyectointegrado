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
            <th>Nombre</th><th>Apellidos</th><th>F.Nacimiento</th><th>Email</th><th>Entrenador</th><th>Rutina</th><th></th>
        </tr>
    </thead>
    <tbody class="bg-light">
        <c:forEach var="usu" items="${sistema.filtrarUsuarios(param.filtro)}">
            <tr>
                <td>${usu.nombre}</td>
                <td>${usu.apellidos}</td>
                <td><fmt:formatDate value="${usu.fechaNacimiento}" pattern="dd/MM/yyyy" /></td>
                <td>${usu.email}</td>
                <td>${usu.entrenador.nombre} ${usu.entrenador.apellidos}</td>
                <td>${usu.rutina.nombre == null ? '-' : usu.rutina.nombre}</td>

                <td>
                    <form action="EditarUsuario" method="POST">
                        <input type="hidden" name="rutinaId" value="${usu.id}">
                        <input type="submit" name="seleccionar" value="Seleccionar" class="btn btn-sm btn-secondary">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

