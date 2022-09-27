<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Promoção</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Adicionar Promoção</h1>
                <form action="ControladorPromo">
                    ID:<br>
                    <input class="form-control" type="text" name="txtId"><br>
                    Nome:<br>
                    <input class="form-control" type="text" name="txtNome"><br>
                    Tipo da Promoção:<br>
                    <input class="form-control" type="text" name="txtTipo"><br>
                    Desconto:<br>
                    <input class="form-control" type="text" name="txtDesc"><br>
                    Id do Pacote de Viagens:<br>
                    <input class="form-control" type="text" name="txtIdPacote"><br>
                    
                    <input class="btn btn-primary" type="submit" name="accion" value="Cadastrar">
                    <a class="btn btn-success" href="ControladorPromo?accion=listar">Retornar</a>
                </form>
            </div>
        </div>
    </body>
</html>
