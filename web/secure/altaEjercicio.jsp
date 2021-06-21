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
                <h3 class="text-white">Actuliza y crea nuevas rutinas.</h3>
                <h1 class="letratitulo text-danger">ZONA DE ENTRENADORES</h1>
            </div>

            <div class="container col-12 col-sm-8 offset-sm-2">
                <form class="p-1" action="AltaEjercicio" method="POST">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" name="titulo" placeholder="Titulo del Ejercicio" required="true" value="${titulo}">
                        <label for="floatingInput">Titulo del Ejercicio</label>
                    </div>

                    <div class="form-floating mb-3">
                        <textarea required class="form-control" placeholder="Escribe aqui..." id="descripcion" name ="descripcion" style="height: 100px" value="${descripcion}"></textarea>
                        <label for="descripcion">Descripcion del Ejercicio</label>
                    </div>

                    <div class="row gx-3">
                        <div class="form-floating mb-3 col-12 col-md-6">
                            <select class="form-select" name="foco" required id="floatingSelect" aria-label="Grupo muscular">
                                <option value="0">Torso</option>
                                <option value="1">Pierna</option>
                                <option value="2">Cardio</option>
                            </select>
                            <label for="floatingSelect">Grupo muscular</label>
                        </div>

                        <div class="form-floating mb-3 col-12 col-md-6">
                            <select class="form-select" name="dificultad" required id="floatingSelect2" aria-label="Nivel de dificultad">
                                <option value="0">Bajo</option>
                                <option value="1">Medio</option>
                                <option value="2">Alto</option>
                            </select>
                            <label for="floatingSelect2">Nivel de dificultad</label>
                        </div>
                    </div>

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="linkvideo" name="linkvideo" placeholder="link del video" required="true" value="${linkvideo}">
                        <label for="linkvideo">Link: Video explicativo</label>
                    </div>

                    <div class="row gx-3 m-3">
                        <input type="submit" class="btn btn-danger btn-lg col-5" value="Crear ejercicio">
                        <a href="ejercicios.jsp" class="btn btn-info col-5 offset-sm-2">Volver</a> 
                    </div>

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
