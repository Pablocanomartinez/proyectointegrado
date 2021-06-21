<%-- 
    Document   : completarRegistro
    Created on : 26-may-2021, 0:30:07
    Author     : pablo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">  
        <script src="https://kit.fontawesome.com/486122351f.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <link href="css/csspropio.css" rel="stylesheet">
        <title>Proyecto Pablo Cano</title>
    </head>
    <body class="bg-dark">
        <header>
            <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light ">
                <div class="container text-center">
                    <a href="inicio.jsp" class="navbar-brand"><img src="img/logo.png" alt="logo de clase" width="100"></a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                            aria-expanded="false" aria-controls="navbarNavAltMarkup">
                        <span class="navbar-toggler-icon"></span>
                    </button>


                    <div class="collapse navbar-collapse navbar-right ms-sm-5" id="navbarNavAltMarkup">
                        <ul class="nav navbar-nav ms-sm-5">
                            <li>
                                <p class="mt-2"><span class="font-weight-bold">Sesion activa:</span> ${usuario.nombre}</p>
                            </li>
                            <li><a href="inicio.jsp" class="nav-item nav-link mx-sm-5" >Ir a inicio</a>
                            </li>
                            <li>
                                <a class="nav-item nav-link mx-sm-5" href="secure/CerrarSesion">Desconectar</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <section>
            <div class="container-fluid mt-5 p-5">
                <h3 class="text-white">Entrenar y sentirte activo es muy importante por ello tenemos varios palnes diseñados para
                    ti.</h3>
                <h1 class="letratitulo text-danger">ELIGE EL PLAN QUE MEJOR SE ADAPTE A TI.</h1>
            </div>

            <div class="container-fluid p-5" style="background-image: url('img/carrusel2.jpg');background-size: cover;">
                <form action="CompletarRegistro" method="post">



                    <div class="card opacidad-bg-dark m-3">
                        <div class="card-header text-center">
                            <h3 class="text-white">Elige el Entrenador</h3>
                        </div>
                        <div class="card-body text-white text-center">
                            <c:forEach var="entrenador" items="${sistema.entrenadores}">
                                <input type="radio" id="${entrenador.nombre}" name="elegirEntrenador" value="${entrenador.id}" required>
                                <label for="${entrenador.nombre}">${entrenador.nombre}</label><br>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="row row-cols-1 row-cols-sm-2 g-4">
                        <div class="col">
                            <div class="card opacidad-bg-dark">
                                <div class="card-header text-center">
                                    <h3 class="text-white">Plan Grupal</h3>
                                    <p class="text-danger fs-3">29,99 <span class="text-white fs-6"> /mes + IVA</span> <span
                                            class="badge bg-danger rounded-pill text-white">Popular</span></p>
                                </div>
                                <div class="card-body">
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Entenamiento conjunto</p>
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Rutina establecida</p>
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Nociones de Alimentacion</p>
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Consultas via Email</p>
                                    <p class="card-text text-white text-decoration-line-through" style="text-decoration: line-through"><i class="fas fa-check"></i> Fisoterapeuta</p>
                                </div>
                                <div class="card-footer">
                                    <div class="text-center">
                                        <div class="form-check text-white">
                                            <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="GRUPAL" checked>
                                            <label class="form-check-label" for="exampleRadios1">
                                                Elegir esta opcion
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card opacidad-bg-dark">
                                <div class="card-header text-center">
                                    <h3 class="text-white">Plan Individual</h3>
                                    <p class="text-danger fs-3">49,99 <span class="text-white fs-6"> /mes + IVA</span></p>
                                </div>
                                <div class="card-body">
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Entenamiento individual</p>
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Rutina personalizada</p>
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Dieta personalizada</p>
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Consultas fisicas</p>
                                    <p class="card-text text-white"><i class="fas fa-check"></i> Fisoterapeuta</p>
                                </div>
                                <div class="card-footer">
                                    <div class="text-center">
                                        <div class="form-check text-white">
                                            <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="INDIVIDUAL">
                                            <label class="form-check-label" for="exampleRadios2">
                                                Elegir esta opcion
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <input class="btn btn-danger container-fluid mt-4" type="submit" value="Completar Registro">
                </form>
            </div>

        </section>

        <footer id="footer" class="mt-5 p-2 text-white bg-dark">
            <div class="container-fluid">
                <p class="text-center">Proyecto Diseño web: PABLO CANO MARTINEZ &copy;</p>
            </div>
        </footer>
    </body>
</html>
