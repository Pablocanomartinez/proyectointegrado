<%-- 
    Document   : rutinas
    Created on : 27-may-2021, 15:54:47
    Author     : pablo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">  
        <script src="https://kit.fontawesome.com/486122351f.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <link href="../css/csspropio.css" rel="stylesheet">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>
            function filtrar() {
                var filtro = document.getElementById('filtro').value;
                $.ajax({
                    method: "POST",
                    url: "filtrarUsuarios.jsp",
                    data: {filtro: filtro}
                })
                        .done(function (listado) {
                            $("#listadoRutinas").html(listado);
                        });
            }
        </script>

        <title>Proyecto Pablo Cano</title>
    </head>
    <body class="bg-dark">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light ">
                <div class="container">
                    <a href="home.jsp" class="navbar-brand"><img src="../img/logo.png" alt="logo de clase" width="100"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarNavAltMarkup" aria-expanded="false" aria-controls="navbarNavAltMarkup">
                        <span class="navbar-toggler-icon"></span>
                    </button>


                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="nav navbar-nav navbar-right">
                            <div class="dropdown container-fluid">
                                <ul class="nav navbar-nav ms-sm-5">
                                    <li>
                                        <p class="mt-2"><span class="font-weight-bold">Sesion activa:</span> ${entrenador.nombre}</p>
                                    </li>
                                    <li><a href="homeEntrenador.jsp" class="nav-item nav-link mx-sm-5" >Home</a>
                                    </li>
                                    <li>
                                        <a class="nav-item nav-link mx-sm-5" href="CerrarSesion">Desconectar</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </nav>
        </header>
        <div class="container-fluid p-5">
            <h3 class="text-white">Actuliza los usuarios.</h3>
            <h1 class="letratitulo text-danger">ZONA DE ENTRENADORES</h1>
        </div>

        <c:if test="${!empty param.mensaje}">
            <div class="alert alert-success p-3 mt-0" role="alert">
                ${param.mensaje}
            </div>
        </c:if>

        <c:if test="${!empty error}">
            <div class="alert alert-danger mt-0" role="alert">
                ${error}
            </div>
        </c:if>

        <div class="contaier">
            <div class="from-group col-12 col-sm-8 offset-sm-2 text-center">
                <label class="font-weight-bold text-danger letratitulo" for="filtro">FILTRAR POR NOMBRE O EMAIL</label>
                <div class="row">
                    <input class="form-control col-12" type="text" id="filtro" onkeyup="filtrar()" placeholder="Escribe aqui...">
                </div>
            </div>
            <div class="m-3">
                <div id="listadoRutinas">
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th>Nombre</th><th>Apellidos</th><th>F.Nacimiento</th><th>Email</th><th>Entrenador</th><th>Rutina</th><th></th>
                            </tr>
                        </thead>
                        <tbody class="bg-light">
                            <c:forEach var="usu" items="${sistema.usuarios}">
                                <tr>
                                    <td class="usuario">${usu.nombre}</td>
                                    <td class="usuario">${usu.apellidos}</td>
                                    <td class="usuario"><fmt:formatDate value="${usu.fechaNacimiento}" pattern="dd/MM/yyyy" /></td>
                                    <td class="usuario">${usu.email}</td>
                                    <td class="usuario">${usu.entrenador.nombre} ${usu.entrenador.apellidos}</td>
                                    <td class="usuario">${usu.rutina.nombre == null ? '-' : usu.rutina.nombre}</td>
                                    <td>
                                        <form action="EditarUsuario" method="POST">
                                            <input type="hidden" name="idUsuario" value="${usu.id}">
                                            <input type="submit" name="seleccionar" value="Seleccionar" class="btn btn-sm btn-secondary">
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <br>
            <p class="text-center"><a href="homeEntrenador.jsp" class="btn btn-info">Volver</a></p>
        </div>

    </body>
</html>
