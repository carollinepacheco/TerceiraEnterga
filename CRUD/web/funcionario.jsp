
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Funcionario"%>
<%@page import="ModeloDAO.FuncionarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/x-icon" href="./assets/icon/marcador.svg">

        <!-- fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/871064c925.js" crossorigin="anonymous"></script>

        <!-- CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link href="css/pags.css" rel="stylesheet" type="text/css"/>
        <title>CTOUR</title>
    </head>

    <body>
        <!-- HEADER -->
        <header>
            <div id="header">
                <div class="container">
                    <nav class="navbar navbar-expand-lg justify-content-between">
                        <a class="navbar-brand" href="#">
                            <span class="logo1">CTOUR</span><span class="logo2">Viagens</span>
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="nav-navbar navbar-expand-lg">
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" aria-current="page" href="principal.jsp">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="promocao.jsp">Promoções</a>
                                    </li> 
                                    <li class="nav-item">
                                        <a class="nav-link" href="pacotes.jsp">Pacotes</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="funcionario.jsp"></i>Funcionário</a>

                                    </li>
                                </ul>
                                <ul class="navbar-nav">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Administrador
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">Admin</a></li>
                                            <li><a class="dropdown-item" href="#">admin@gmail.com</a></li>
                                            <li><hr class="dropdown-divider"></li>
                                            <li><a class="dropdown-item" href="index.jsp">Encerrar Sessão</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>


        <br>
        <br>
        <div class="container">
            <a class="btn btn-success btn-lg" href="ControladorFunc?accion=listar">Listar Funcionários</a>
        </div>



        <!-- Footer -->
        <footer class=" text-center text-white fixed-bottom"  style="background-color:#01a214;">
            <div class="container p-4">
            </div>
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
                © 2022 Copyright:
                <a class="text-dark" href="#">Ctour.com</a>
            </div>
        </footer>
        <!-- Footer -->

        <!-- JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    </body>
</html>
