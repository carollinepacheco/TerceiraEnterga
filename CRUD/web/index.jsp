<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    </head>
    <body>

        <div class="container mt-5 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body">
                    <form class="form-sign" action="ControladorFunc" method="post">
                        <div class="form-group text-center">
                            <h3>Login</h3>
                            <img src="img/login.png" alt="70" width="170"/>
                            <label>Bem vindo ao Sistema</label>
                        </div><br>
                        <div class="form-group">
                            <label>E-mail:</label>
                            <input type="text" name="txtuser" class="form-control">
                        </div><br>
                        <div class="form-group">
                            <label>Senha:</label>
                            <input type="password" name="txtpass" class="form-control">
                        </div><br>
                        <div class="d-grid goup-2">
                            <input type="submit" name="login" value="Entrar" class="btn btn-primary">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    </body>
</html>
