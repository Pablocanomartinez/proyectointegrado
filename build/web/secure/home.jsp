<%-- 
    Document   : home
    Created on : 26-may-2021, 13:03:49
    Author     : pablo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <section>

            <div class="container-fluid p-5">
                <h3 class="text-white">Aqui tendras las ultimas actulizaciones sobre tu entrenamiento y dieta.</h3>
                <h1 class="letratitulo text-danger">QUE NADA TE DETENGA !!</h1>
            </div>

            <div class="container-fluid p-sm-4">
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
                
                <a class=" text-white stretched-link bg-danger btn p-5 col-12 col-sm-10 offset-sm-1 letratitulo" style="font-size: 2rem" href="entrenamiento.jsp">ENTRENAMIENTO</a>
                <a class=" text-white stretched-link bg-danger btn p-5 col-12 col-sm-10 offset-sm-1 letratitulo mt-5" style="font-size: 2rem" href="ejercicios.jsp">EJERCICIOS</a>
            </div>

        </section>
    </body>
</html>
