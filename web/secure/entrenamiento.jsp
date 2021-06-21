<%-- 
    Document   : entrenamiento
    Created on : 26-may-2021, 14:43:48
    Author     : pablo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://kit.fontawesome.com/486122351f.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">        <script src="https://kit.fontawesome.com/486122351f.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <link href="../css/csspropio.css" rel="stylesheet">
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
                                        <p class="mt-2"><span class="font-weight-bold">Sesion activa:</span> ${usuario.nombre}</p>
                                    </li>
                                    <li><a href="home.jsp" class="nav-item nav-link mx-sm-5" >Home</a>
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

        <div class="card text-center border-0 mt-5">
            <div class="card-header bg-danger p-3">
                <h2 class="text-white letratitulo">ENTRENAMIENTO ${usuario.tarifa}</h2>
            </div>
            <div class="card-body">
                <table class="table table-hover ">
                    <thead>
                        <tr>
                            <th scope="col">Lunes</th>
                            <th scope="col">Martes</th>
                            <th scope="col">Miercoles</th>
                            <th scope="col">Jueves</th>
                            <th scope="col">Viernes</th>
                            <th scope="col">Sabado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="entrenamiento">${usuario.rutina.ejercicioLunes1.nombre == null ? '-' : usuario.rutina.ejercicioLunes1.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMartes1.nombre == null ? '-' : usuario.rutina.ejercicioMartes1.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMiercoles1.nombre == null ? '-' : usuario.rutina.ejercicioMiercoles1.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioJueves1.nombre == null ? '-' : usuario.rutina.ejercicioJueves1.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioViernes1.nombre == null ? '-' : usuario.rutina.ejercicioViernes1.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioSabado1.nombre == null ? '-' : usuario.rutina.ejercicioSabado1.nombre}</td>
                        </tr>
                        <tr>
                            <td class="entrenamiento">${usuario.rutina.ejercicioLunes2.nombre == null ? '-' : usuario.rutina.ejercicioLunes2.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMartes2.nombre == null ? '-' : usuario.rutina.ejercicioMartes2.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMiercoles2.nombre == null ? '-' : usuario.rutina.ejercicioMiercoles2.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioJueves2.nombre == null ? '-' : usuario.rutina.ejercicioJueves2.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioViernes2.nombre == null ? '-' : usuario.rutina.ejercicioViernes2.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioSabado2.nombre == null ? '-' : usuario.rutina.ejercicioSabado2.nombre}</td>
                        </tr>
                        <tr>
                            <td class="entrenamiento">${usuario.rutina.ejercicioLunes3.nombre == null ? '-' : usuario.rutina.ejercicioLunes3.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMartes3.nombre == null ? '-' : usuario.rutina.ejercicioMartes3.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMiercoles3.nombre == null ? '-' : usuario.rutina.ejercicioMiercoles3.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioJueves3.nombre == null ? '-' : usuario.rutina.ejercicioJueves3.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioViernes3.nombre == null ? '-' : usuario.rutina.ejercicioViernes3.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioSabado3.nombre == null ? '-' : usuario.rutina.ejercicioSabado3.nombre}</td>
                        </tr>
                        <tr>
                            <td class="entrenamiento">${usuario.rutina.ejercicioLunes4.nombre == null ? '-' : usuario.rutina.ejercicioLunes4.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMartes4.nombre == null ? '-' : usuario.rutina.ejercicioMartes4.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMiercoles4.nombre == null ? '-' : usuario.rutina.ejercicioMiercoles4.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioJueves4.nombre == null ? '-' : usuario.rutina.ejercicioJueves4.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioViernes4.nombre == null ? '-' : usuario.rutina.ejercicioViernes4.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioSabado4.nombre == null ? '-' : usuario.rutina.ejercicioSabado4.nombre}</td>
                        </tr>
                        <tr>
                            <td class="entrenamiento">${usuario.rutina.ejercicioLunes5.nombre == null ? '-' : usuario.rutina.ejercicioLunes5.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMartes5.nombre == null ? '-' : usuario.rutina.ejercicioMartes5.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioMiercoles5.nombre == null ? '-' : usuario.rutina.ejercicioMiercoles5.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioJueves5.nombre == null ? '-' : usuario.rutina.ejercicioJueves5.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioViernes5.nombre == null ? '-' : usuario.rutina.ejercicioViernes5.nombre}</td>
                            <td class="entrenamiento">${usuario.rutina.ejercicioSabado5.nombre == null ? '-' : usuario.rutina.ejercicioSabado5.nombre}</td>
                        </tr>
                    </tbody>
                </table>
                <a href="ejercicios.jsp" class="btn btn-danger">Ver Ejercicios</a>
            </div>
            <div class="card-footer text-muted">
                Si la rutina esta en blanco, espera a tu entrenador.
            </div>
        </div>
        <c:if test="${usuario.tarifa == 'GRUPAL'}">

            <div class="card text-center border-0 my-5">
                <div class="card-header bg-danger p-3">
                    <h2 class="text-white letratitulo">PARTICIPANTES DE ENTRENAMIENTO ${usuario.tarifa}</h2>
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <c:forEach var="usu" items="${sistema.usuarios}">
                            <c:if test="${usu.tarifa == usuario.tarifa && usu.entrenador.id == usuario.entrenador.id && usu.rutina.id == usuario.rutina.id}">
                                <li class="list-group-item m-1 text-capitalize">
                                    ${usu.nombre} ${usu.apellidos}
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
                <div class="card-footer text-muted">
                    Clase impartida por <strong>${usuario.entrenador.nombre} ${usuario.entrenador.apellidos}</strong>
                </div>
            </div>
        </c:if>
    </body>
</html>
