<%-- 
    Document   : altaRutina
    Created on : 27-may-2021, 17:41:13
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
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>        <link href="../css/csspropio.css" rel="stylesheet">
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
                <h3 class="text-white">Crea un nuevo Entrenador.</h3>
                <h1 class="letratitulo text-danger">ZONA DE ENTRENADORES</h1>
            </div>

            <div class="container col-12 col-sm-8 offset-sm-2">
                <form class="p-1" action="AltaEntrenador" method="POST">

                    <div class="row gx-3">
                        <div class="form-floating mb-3 col-6">
                            <input type="text" class="form-control" id="floatingInput2" name="nombre" placeholder="Nombre" required="true" value="${nombre}">
                            <label for="floatingInput2">Nombre</label>
                        </div>

                        <div class="form-floating mb-3 col-6">
                            <input type="text" class="form-control" id="floatingInput" name="apellidos" placeholder="Apellidos" required="true" value="${apellidos}">
                            <label for="floatingInput">Apellidos</label>
                        </div>
                    </div>

                    <div class="row gx-3">
                        <div class="form-floating mb-3 col-6">
                            <input type="text" class="form-control" id="floatingInput3" name="login" placeholder="Nombdre de Entrenador" required="true" value="${login}">
                            <label for="floatingInput3">Nombdre de Entrenador</label>
                        </div>

                        <div class="form-floating mb-3 col-6">
                            <input type="password" class="form-control" id="floatingInput4" name="pass" placeholder="Contraseña" required="true" value="${pass}">
                            <label for="floatingInput4">Contraseña</label>
                        </div>
                    </div>


                    <div class="mb-5">
                        <h5 class="text-white">¿ Es Administrador ?</h5>
                        <div class="form-check text-white">
                            <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="0" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                No
                            </label>
                        </div>
                        <div class="form-check text-white">
                            <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="1" >
                            <label class="form-check-label" for="exampleRadios2">
                                Si
                            </label>
                        </div>
                    </div>



                    <div class="row gx-3 m-3">
                        <input type="submit" class="btn btn-danger btn-lg col-5" value="Crear Entrenador">
                        <a href="entrenadores.jsp" class="btn btn-info col-5 offset-sm-2">Volver</a> 
                    </div>

                </form>
            </div>
            <c:if test="${!empty error}">
                <div class="alert alert-danger mt-3">
                    ${error}
                </div>
            </c:if>
        </section>
</html>
