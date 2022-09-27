<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Funcionário</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Adcionar Funcionario</h1>
                <form action="ControladorFunc">
                    ID:<br>
                    <input class="form-control" type="text" name="txtId"><br>
                    Nome:<br>
                    <input class="form-control" type="text" name="txtNom"><br>
                    Email:<br>
                    <input class="form-control" type="email" name="txtEmail"><br>
                    Senha:<br>
                    <input class="form-control" type="password" name="txtPass"><br>
                    
                    <input class="btn btn-primary" type="submit" name="accion" value="Cadastrar">
                    <a class="btn btn-success" href="ControladorFunc?accion=listar">Retornar</a>
                </form>
            </div>

        </div>
    </body>
</html>
