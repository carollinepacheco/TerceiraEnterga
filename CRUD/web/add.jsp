<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Pacotes</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Adcionar Pacotes</h1>
                <form action="Controlador">
                    ID:<br>
                    <input class="form-control" type="text" name="txtId"><br>
                    Destino:<br>
                    <input class="form-control" type="text" name="txtDestn"><br>
                    Hospedagem:<br>
                    <input class="form-control" type="text" name="txtHosped"><br>
                    Diarias:<br>
                    <input class="form-control" type="text" name="txtDiarias"><br>
                    Preço:<br>
                    <input class="form-control" type="text" name="txtPreco"><br>
                    Id Funcionário:<br>
                    <input class="form-control" type="text" name="txtIdFun"><br>
                    
                    <input class="btn btn-primary" type="submit" name="accion" value="Cadastrar">
                    <a class="btn btn-success" href="Controlador?accion=listar">Retornar</a>
                </form>
            </div>

        </div>
    </body>
</html>
