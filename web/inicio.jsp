<%-- 
    Document   : inicio
    Created on : 25-may-2021, 2:37:52
    Author     : pablo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/csspropio.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">  
        <script src="https://kit.fontawesome.com/486122351f.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Proyecto Pablo Cano</title>
        <script>
            function validar_clave(e) {
                var pass1 = document.getElementById('inputPassRegistro').value;
                var pass2 = document.getElementById('inputPassRegistro2').value;
                if (!pass1.value.equals(pass2.value)) {
                    e.preventDefault();
                    alert("Las contraseñas no son iguales");
                    return false
                } else {
                    return true
                }
            }
        </script>
    </head>

    <body class="bg-dark">
        <header>
            <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light ">
                <div class="container text-center">
                    <a href="index.html" class="navbar-brand"><img src="img/logo.png" alt="logo de clase" width="100"></a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                            aria-expanded="false" aria-controls="navbarNavAltMarkup">
                        <span class="navbar-toggler-icon"></span>
                    </button>


                    <div class="collapse navbar-collapse navbar-right ms-sm-5" id="navbarNavAltMarkup">
                        <ul class="nav navbar-nav ms-sm-5">

                            <li><a href="#" class="nav-item nav-link mx-sm-5" data-bs-toggle="modal"
                                   data-bs-target="#modalLogin">Accede</a>
                            </li>

                            <li><a href="#" class="nav-item nav-link mx-sm-5" data-bs-toggle="modal"
                                   data-bs-target="#modalSingup">Registrate</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <section>
            <div class="container-fluid p-5 mt-5 text-white" style="background-image: url('img/horizontal.jpg');">

                <div class="container text-center">
                    <h1 class="fs-1 letratitulo">CROSSFIT TRAINING</h1>
                    <c:if test="${!empty error}">
                        <div class="alert alert-danger mt-3">
                            ${error}
                        </div>
                    </c:if>
                    <p>¿Aburrido de entrenar solo en gimnasion convencionales sin ningun tipo de supervision?</p>
                    <p class="col-12 col-sm-8 offset-sm-2 text-center">En nuestra platadorma encontraras lo que estabas buscando
                        <strong>entrenamientos adaptados a ti</strong> con la supervisacion
                        personal por expertos cualificados en <strong> Acondicionamiento Fisico</strong>
                    </p>
                </div>

                <div id="carouselExampleControls" class="carousel slide mt-5 d-none d-sm-block" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">

                            <div class="container col-8">
                                <h3 class="text-danger letratitulo">ENCUENTRA TU MEJOR VERSION</h3>
                                <h3 class="text-light letratitulo">ENTRENA CON NOSTROS</h3>
                                <hr>
                                <p class="lead">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsum, doloremque! Corporis
                                    doloremque culpa
                                    omnis ex ab facere, sunt vel ullam magni sit consequuntur maxime officia consequatur unde ipsum a nisi!
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sit soluta tempore voluptatibus quasi,
                                    possimus similique porro, recusandae adipisci reprehenderit aut cum assumenda culpa fuga doloribus
                                    maxime! Aperiam nostrum culpa amet.
                                </p>
                            </div>

                        </div>
                        <div class="carousel-item">

                            <div class="container col-8">
                                <h3 class="text-danger letratitulo">¿QUE ES CROSSFIT ?</h3>
                                <h3 class="text-light letratitulo">VEN Y DESCUBRELO</h3>
                                <hr>
                                <p class="lead">CrossFit es un programa de fuerza y acondicionamiento físico Total, que se basa en el
                                    incremento de las
                                    diez capacidades físicas más reconocidas por los especialistas en el entrenamiento deportivo:
                                    Resistencia Cardio-Respiratoria, Resistencia Muscular, Fuerza, Flexibilidad, Potencia, Velocidad,
                                    Coordinación, Agilidad, Equilibrio y Precisión.
                                </p>
                            </div>

                        </div>
                        <div class="carousel-item">

                            <div class="container col-8">
                                <h3 class="text-danger letratitulo">CROSSFIT PARA TODOS</h3>
                                <h3 class="text-light letratitulo">NO TE QUEDES SIN PROBARLO</h3>
                                <hr>
                                <p class="lead">Todas las personas podemos hacer CrossFit porque todos los ejercicios son adaptados a
                                    nuestro nivel, sin importar nuestra condición física. El límite y la intensidad los pones tú: tú subes
                                    las veces que
                                    puedas a un cajón o tú haces las flexiones que puedas en 30 segundos. Los entrenadores te ayudamos a
                                    escoger la mejor opción para ti, nunca te dejaremos solo intentaremos apoyarte en cada entrenamiento
                                    para que progreses adecuadamente.
                                </p>

                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only"></span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only"></span>
                    </a>
                </div>

                <div class="text-center">
                    <a href="#" class="btn btn-light btn-lg  mt-5" data-bs-toggle="modal" data-bs-target="#modalSingup">Inscribete
                        ahora &raquo;
                    </a>
                </div>

            </div>

            <div class="container-fluid">
                <div class="row">

                    <div class="col-12 col-sm-4 bg-dark p-3 position-relative">
                        <div class="row text-white">
                            <div class="col-4">
                                <i class="fas fa-user" style="font-size: 500%;margin-top: 1.5rem;"></i>
                            </div>
                            <div class="col-8 mt-3">
                                <h3><a href="#entrenamiento" class="text-danger text-decoration-none stretched-link">TRAINING</a></h3>
                                <p><strong>Entrenamientos personalizados</strong> por que nunca te dejamos solo.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-4 bg-light p-3 position-relative">
                        <div class="row ">
                            <div class="col-4">
                                <i class="far fa-clock" style="font-size: 500%;margin-top: 1.5rem;"></i>
                            </div>
                            <div class="col-8 mt-3">
                                <h3><a href="#horario" class="text-dark text-decoration-none stretched-link">HORARIO</a></h3>
                                <p>Entrena a tu gusto, elige entrenar <strong>cuando mejor te convenga</strong>.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-4 bg-danger p-3 position-relative">
                        <div class="row text-white">
                            <div class="col-4">
                                <i class="fab fa-font-awesome-flag" style="font-size: 500%;margin-top: 1.5rem;"></i>
                            </div>
                            <div class="col-8 mt-3">
                                <h3><a href="#localizacion" class="text-light text-decoration-none stretched-link">LOCALIZACION</a></h3>
                                <p>Tenemos instalaciones en Camas pero puedes entrenar <strong>donde quieras</strong></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <h2 id="entrenamiento" class="text-center letratitulo p-4 fw-bold bg-light col-12 m-0">SERVICIOS Y CLASES DEL BOX
            </h2>

            <div class="container-fluid p-5" style="background-image: url('img/carrusel2.jpg');background-size: cover;">
                <div class="row">

                    <div class="col-12 col-sm-4 p-4 mx-auto my-3 opacidad-bg-dark rounded">
                        <h3 class="text-danger letratitulo text-center">ENTRENAMIENTO PERSONAL</h3>
                        <div>
                            <ul class="list-group list-group-flush mt-4">
                                <li class="list-group-item opacidad-bg-light"><i class="fas fa-check"></i> Entenamiento</li>
                                <li class="list-group-item opacidad-bg-light mt-2"><i class="fas fa-check"></i> Dieta</li>
                                <li class="list-group-item opacidad-bg-light mt-2"><i class="fas fa-check"></i> Calendario de seguimiento
                                </li>
                                <li class="list-group-item opacidad-bg-light mt-2"><i class="fas fa-check"></i> Entenamiento
                                    personalizados</li>
                                <li class="list-group-item opacidad-bg-light mt-2"><i class="fas fa-check"></i> Atención de consultas
                                    fisicas</li>
                            </ul>
                        </div>
                        <div class="text-center">
                            <a href="#" data-bs-toggle="modal"
                                   data-bs-target="#modalSingup" class="btn btn-light btn-lg  mt-5">Mucho mas !
                            </a>
                        </div>
                    </div>

                    <div class="col-12 col-sm-4 p-4 mx-auto my-3 opacidad-bg-dark rounded">
                        <h3 class="text-danger letratitulo text-center">ENTRENAMIENTO GRUPAL</h3>
                        <div>
                            <ul class="list-group list-group-flush mt-4">
                                <li class="list-group-item opacidad-bg-light"><i class="fas fa-check"></i> Entenamiento</li>
                                <li class="list-group-item opacidad-bg-light mt-2"><i class="fas fa-check"></i> Dieta</li>
                                <li class="list-group-item opacidad-bg-light mt-2"><i class="fas fa-check"></i> Divension conjunta</li>
                                <li class="list-group-item opacidad-bg-light mt-2"><i class="fas fa-check"></i> Entenamiento grupales</li>
                                <li class="list-group-item opacidad-bg-light mt-2"><i class="fas fa-check"></i> Atención de consultas por
                                    e-mail</li>
                            </ul>
                        </div>
                        <div class="text-center">
                            <a href="#" data-bs-toggle="modal"
                               data-bs-target="#modalSingup" class="btn btn-light btn-lg  mt-5">Mucho mas !
                            </a>
                        </div>
                    </div>

                </div>
            </div>
            <div id="horario" class="container-fluid">
                <div class="row">

                    <div class="col-12 col-sm-4 p-3 text-center bg-danger">
                        <h3 class="text-white fw-bold">6 dias</h3>
                        <p>a la semana. Lun/Sab 8:00 - 22:00</p>
                    </div>

                    <div class="col-12 col-sm-4 p-3 text-center bg-secondary">
                        <h3 class="fw-bold">7 sesiones</h3>
                        <p class="text-white">dirigidas al dia</p>
                    </div>

                    <div class="col-12 col-sm-4 p-3 text-center bg-light">
                        <h3 class="text-danger fw-bold">3 Entrenamientos</h3>
                        <p>diferentes al dia</p>
                    </div>

                </div>
            </div>

            <div id="localizacion" class="container-fluid bg-dark p-3">
                <hr class="text-white">
                <div class="row">
                    <iframe class="col-12 col-sm-6"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3169.363330723343!2d-6.040677949392504!3d37.40488627972953!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd126b64a210c061%3A0xfc39137313475fad!2sIES%20Camas!5e0!3m2!1ses!2ses!4v1613413079198!5m2!1ses!2ses"
                            width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                            tabindex="0"></iframe>

                    <div class="col-12 col-sm-6 text-white">
                        <div>
                            <h3 class="text-danger letratitulo ">NUESTRAS <strong>INSTALACIONES</strong></h3>
                            <div>
                                <p class="fw-bold">UBICACION</p>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum, dicta? Totam sed optio ullam! Quae,
                                    explicabo blanditiis enim aut illo eos non deleniti nesciunt, corrupti modi asperiores dicta harum
                                    laboriosam.</p>
                            </div>

                            <div>
                                <p class="fw-bold">EL BOX</p>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum, dicta? Totam sed optio ullam! Quae,
                                    explicabo blanditiis enim aut illo eos non deleniti nesciunt, corrupti modi asperiores dicta harum
                                    laboriosam.</p>
                            </div>

                            <div>
                                <p class="fw-bold">MATERIALES</p>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum, dicta? Totam sed optio ullam! Quae,
                                    explicabo blanditiis enim aut illo eos non deleniti nesciunt, corrupti modi asperiores dicta harum
                                    laboriosam.</p>
                            </div>

                        </div>
                    </div>
                </div>
                <hr class="text-white">
            </div>

        </section>

        <footer id="footer" class="p-2 text-white bg-dark">
            <div class="container-fluid">
                <p class="text-center">Proyecto Diseño web: PABLO CANO MARTINEZ &copy;</p>
            </div>
        </footer>


        <div class="modal fade" id="modalLogin">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">

                    <div class="modal-header">
                        <h3 class="text-center">Accede</h3>
                    </div>

                    <div class="modal-body">
                        <form action="Login2" method="POST">
                            <div class="form-group">
                                <label for="inputEmailLogin" class="col-form-label fw-bold">Email:</label>
                                <input type="text" class="form-control" id="inputEmailLogin" name="inputEmailLogin" placeholder="Escribe tu email...">
                            </div>
                            <div class="mb-3">
                                <label for="inputPassLogin" class="col-form-label fw-bold">Contraseña:</label>
                                <input type="password" class="form-control" id="inputPassLogin" name ="inputPassLogin" placeholder="Escribe tu contraseña...">
                            </div>
                            <input class="btn btn-success container-fluid" type="submit" value="Iniciar Sesion">
                        </form>

                        <c:if test="${!empty error}">
                            <div class="alert alert-danger mt-3">
                                ${error}
                            </div>
                        </c:if>

                    </div>

                    <div class="modal-footer">
                        <p><a href="#">¿Has olvidado la contraseña?</a></p>
                    </div>

                </div>
            </div>
        </div>

        <div class="modal fade" id="modalSingup">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">

                    <div class="modal-header">
                        <h3 class="text-center">Registrate ahora !!</h3>
                    </div>

                    <div class="modal-body">
                        <form action="Registro" method="POST">
                            <div class="form-group">
                                <label for="inputNameResgistro" class="col-form-label">Nombre:</label>
                                <input type="text" class="form-control" id="inputNameResgistro" name="inputNameResgistro" placeholder="Escribe tu nombre...">
                            </div>
                            <div class="form-group">
                                <label for="inputApellidoResgistro" class="col-form-label">Apellidos:</label>
                                <input type="text" class="form-control" id="inputApellidoResgistro" name="inputApellidoResgistro" placeholder="Escribe tus apellidos...">
                            </div>
                            <div class="form-group">
                                <label for="inputFechaResgistro" class="col-form-label">Fecha Nacimiento:</label>
                                <input type="date" class="form-control" id="inputFechaResgistro" name="inputFechaResgistro" placeholder="Elige tu fecha nacimiento...">
                            </div>
                            <div class="form-group">
                                <label for="inputEmailRegistro" class="col-form-label">Email:</label>
                                <input type="text" class="form-control" id="inputEmailRegistro" name="inputEmailRegistro" placeholder="Escribe tu email...">
                            </div>

                            <div class="mb-3">
                                <label for="inputPassRegistro2" class="col-form-label fw-bold">Contraseña:</label>
                                <input type="password" class="form-control" id="inputPassRegistro2" name="inputPassRegistro2"
                                       placeholder="Escribe tu contraseña...">
                            </div>
                            <input type="submit" class="btn btn-success container-fluid" value="Registrate">
                        </form>

                        <c:if test="${!empty error}">
                            <div class="alert alert-danger mt-3">
                                ${error}
                            </div>
                        </c:if>
                    </div>

                    <div class="modal-footer">
                        <p class="text-center">Al Registrate, <a href="#" class="link-danger">Acepto los Terminos de Uso</a> y <a
                                href="#" class="link-danger">La Politica de Privacidad</a></p>
                    </div>

                </div>
            </div>
        </div>


        <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>

</html>
