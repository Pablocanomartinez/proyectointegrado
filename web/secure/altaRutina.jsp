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
                <h3 class="text-white">Crea una nueva rutina.</h3>
                <h1 class="letratitulo text-danger">ZONA DE ENTRENADORES</h1>
            </div>

            <div class="container col-12 col-sm-8 offset-sm-2">
                <form class="p-1" action="AltaRutina" method="POST">

                    <input type="hidden" name="id" value="${entrenador.id}">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput2" name="titulo" placeholder="Titulo de la rutina..." required="true" value="${titulo}">
                        <label for="floatingInput2">Titulo de la Rutina</label>
                    </div>

                    <div class="accordion" id="accordionPanelsStayOpenExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                                    Lunes
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                                <div class="accordion-body">
                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciol1" required id="floatingSelect1" aria-label="Primer ejercicio Lunes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect1">Primer ejercicio Lunes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciol2" required id="floatingSelect2" aria-label="Segundo ejercicio Lunes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect2">Segundo ejercicio Lunes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciol3" required id="floatingSelect3" aria-label="Tercer ejercicio Lunes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect3">Tercer ejercicio Lunes</label>
                                        </div>
                                    </div>

                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejerciciol4" required id="floatingSelect4" aria-label="Cuarto ejercicio Lunes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect4">Cuarto ejercicio Lunes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejerciciol5" required id="floatingSelect5" aria-label="Quinto ejercicio Lunes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect5">Quinto ejercicio Lunes</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                    Martes
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                                <div class="accordion-body">
                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciom1" required id="floatingSelect1" aria-label="Primer ejercicio Martes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect1">Primer ejercicio Martes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciom2" required id="floatingSelect2" aria-label="Segundo ejercicio Martes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect2">Segundo ejercicio Martes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciom3" required id="floatingSelect3" aria-label="Tercer ejercicio Martes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect3">Tercer ejercicio Martes</label>
                                        </div>
                                    </div>

                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejerciciom4" required id="floatingSelect4" aria-label="Cuarto ejercicio Martes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect4">Cuarto ejercicio Martes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejerciciom5" required id="floatingSelect5" aria-label="Quinto ejercicio Martes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect5">Quinto ejercicio Martes</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                    Miercoles
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                                <div class="accordion-body">
                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciox1" required id="floatingSelect1" aria-label="Primer ejercicio Miercoles">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect1">Primer ejercicio Miercoles</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciox2" required id="floatingSelect2" aria-label="Segundo ejercicio Miercoles">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect2">Segundo ejercicio Miercoles</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciox3" required id="floatingSelect3" aria-label="Tercer ejercicio Miercoles">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect3">Tercer ejercicio Miercoles</label>
                                        </div>
                                    </div>

                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejerciciox4" required id="floatingSelect4" aria-label="Cuarto ejercicio Miercoles">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect4">Cuarto ejercicio Miercoles</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejerciciox5" required id="floatingSelect5" aria-label="Quinto ejercicio Miercoles">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect5">Quinto ejercicio Miercoles</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-4" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                    Jueves
                                </button>
                            </h2>
                            <div id="panelsStayOpen-4" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                                <div class="accordion-body">
                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejercicioj1" required id="floatingSelect1" aria-label="Primer ejercicio Jueves">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect1">Primer ejercicio Jueves</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejercicioj2" required id="floatingSelect2" aria-label="Segundo ejercicio Jueves">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect2">Segundo ejercicio Jueves</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejercicioj3" required id="floatingSelect3" aria-label="Tercer ejercicio Jueves">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect3">Tercer ejercicio Jueves</label>
                                        </div>
                                    </div>

                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejercicioj4" required id="floatingSelect4" aria-label="Cuarto ejercicio Jueves">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect4">Cuarto ejercicio Jueves</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejercicioj5" required id="floatingSelect5" aria-label="Quinto ejercicio Jueves">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect5">Quinto ejercicio Jueves</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-5" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                    Viernes
                                </button>
                            </h2>
                            <div id="panelsStayOpen-5" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                                <div class="accordion-body">
                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciov1" required id="floatingSelect1" aria-label="Primer ejercicio Viernes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect1">Primer ejercicio Viernes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciov2" required id="floatingSelect2" aria-label="Segundo ejercicio Viernes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect2">Segundo ejercicio Viernes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejerciciov3" required id="floatingSelect3" aria-label="Tercer ejercicio Viernes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect3">Tercer ejercicio Viernes</label>
                                        </div>
                                    </div>

                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejerciciov4" required id="floatingSelect4" aria-label="Cuarto ejercicio Viernes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect4">Cuarto ejercicio Viernes</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejerciciov5" required id="floatingSelect5" aria-label="Quinto ejercicio Viernes">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect5">Quinto ejercicio Viernes</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-6" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                    Sabado
                                </button>
                            </h2>
                            <div id="panelsStayOpen-6" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                                <div class="accordion-body">
                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejercicios1" required id="floatingSelect1" aria-label="Primer ejercicio Sabado">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect1">Primer ejercicio Sabado</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejercicios2" required id="floatingSelect2" aria-label="Segundo ejercicio Sabado">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect2">Segundo ejercicio Sabado</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-4">
                                            <select class="form-select" name="ejercicios3" required id="floatingSelect3" aria-label="Tercer ejercicio Sabado">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect3">Tercer ejercicio Sabado</label>
                                        </div>
                                    </div>

                                    <div class="row gx-3">
                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejercicios4" required id="floatingSelect4" aria-label="Cuarto ejercicio Sabado">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect4">Cuarto ejercicio Sabado</label>
                                        </div>

                                        <div class="form-floating mb-3 col-12 col-md-6">
                                            <select class="form-select" name="ejercicios5" required id="floatingSelect5" aria-label="Quinto ejercicio Sabado">
                                                <option value="0">Descanso</option>
                                                <c:forEach var="ejer" items="${sistema.ejercicios}">
                                                    <option value="${ejer.id}">${ejer.id} , ${ejer.nombre}</option>
                                                </c:forEach>
                                            </select>
                                            <label for="floatingSelect5">Quinto ejercicio Sabado</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row gx-3 m-3">
                        <input type="submit" class="btn btn-danger btn-lg col-5" value="Crear Rutina">
                        <a href="rutinas.jsp" class="btn btn-info col-5 offset-sm-2">Volver</a> 
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
