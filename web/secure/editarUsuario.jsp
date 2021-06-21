<%-- 
    Document   : altaRutina
    Created on : 27-may-2021, 17:41:13
    Author     : pablo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- CSS only -->
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
        <section>
            <div class="container-fluid p-5">
                <h3 class="text-white">Actuliza los usuarios.</h3>
                <h1 class="letratitulo text-danger">ZONA DE ENTRENADORES</h1>
            </div>

            <div class="container col-12 col-sm-8 offset-sm-2">
                <form class="p-1" action="EditarUsuario" method="POST">
                    <input type="hidden" name="idUsuario" value="${id}">

                    <div class="row gx-3">
                        <div class="form-floating mb-3 col-4">
                            <input type="text" class="form-control" id="floatingInput" name="nombre" placeholder="Nomre del Usuario" required="true" value="${nombre}">
                            <label for="floatingInput">Nomre del Usuario</label>
                        </div>

                        <div class="form-floating mb-3 col-8">
                            <input type="text" class="form-control" id="floatingInput3" name="apellidos" placeholder="Apellidos del Usuario" required="true" value="${apellidos}">
                            <label for="floatingInput3">Apellidos del Usuario</label>
                        </div>
                    </div>

                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" id="floatingInput2" name="email" placeholder="Email del Usuario" required="true" value="${email}">
                        <label for="floatingInput2">Email del Usuario</label>
                    </div>

                    <div class="form-floating mb-3 col-12">
                        <select class="form-select" name="tarifa" required id="floatingSelect2" aria-label="Tarifa">
                            <c:choose>
                                <c:when test = "${tarifa == 'INDIVIDUAL'}">
                                    <option value="INDIVIDUAL" selected>Individual</option>
                                    <option value="GRUPAL">Grupal</option>
                                </c:when>

                                <c:when test = "${tarifa == 'GRUPAL'}">
                                    <option value="INDIVIDUAL">Individual</option>
                                    <option value="GRUPAL" selected>Grupal</option>
                                </c:when>
                            </c:choose>

                        </select>
                        <label for="floatingSelect2">Tarifa</label>
                    </div>

                    <div class="form-floating mb-3 col-12">
                        <select class="form-select" name="rutina" required id="floatingSelect3" aria-label="Rutina">
                            <c:forEach var="rut" items="${sistema.rutinas}">
                                <c:if test="${rut.id == rutina.id}">
                                    <option value="${rut.id}" selected>${rut.nombre}</option>
                                </c:if>
                                <c:if test="${rut.id != rutina.id}">
                                    <option value="${rut.id}">${rut.nombre}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                        <label for="floatingSelect3">Rutina</label>
                    </div>

                    <div class="text-center">
                        <h3 class="text-white">Elige el Entrenador</h3>
                    </div>
                    <div class="card-body text-white text-center">
                        <c:forEach var="entre" items="${sistema.entrenadores}">
                            <c:if test="${entrenadorusu.id == entre.id}">
                                <input type="radio" id="${entre.nombre}" value="${entre.id}" name="entrenadorusu" checked="true" required>
                                <label for="${entre.nombre}">${entre.nombre}</label><br>
                            </c:if>
                            <c:if test="${entrenadorusu.id != entre.id}">
                                <input type="radio" id="${entre.nombre}" name="entrenadorusu" value="${entre.id}" required>
                                <label for="${entre.nombre}">${entre.nombre}</label><br>
                            </c:if>

                        </c:forEach>
                    </div>

                    <div class="row gx-3 m-3">
                        <input type="submit" class="btn btn-danger btn-lg col-6" value="Actulizar" name="actualizar">
                        <input type="submit" class="btn btn-light btn-lg col-6" value="Eliminar" name="eliminar">
                    </div>

                    <a href="usuarios.jsp" class="btn btn-info col-12 col-sm-4 offset-sm-4 mb-3">Volver</a> 
                </form>
            </div>
            <c:if test="${!empty error}">
                <div class="alert alert-danger mt-3">
                    ${error}
                </div>
            </c:if>
        </section>
    </body>
</html>
