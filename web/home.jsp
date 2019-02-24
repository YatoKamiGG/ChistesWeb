<!doctype html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" crossorigin="anonymous">
    <link rel="stylesheet" href="css/mycss.css" type="text/css" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body class="container">
<section class="colorheader">
<header>
    <div class="text-center">
        <img class="img-fluid" src="img/logo.png">
    </div>

    <article>
        <div class="form-group row mx-0 colorform">
            <label class="col-sm-1" for="selecto">Categoria:</label>
            <select onchange="" id="selecto" class="form-control col-sm-6">
                <option>Default select</option>
            </select>
            <button id="triggercate" data-toggle="modal" data-target="#modalcategorias" class="offset-sm-1 col-sm-1"><img src="img/add.png"></button>
            <a class="col-sm-2 offset-sm-1" href="#">Mejores chistes</a>
        </div>
    </article>
</header>

    <article class="text-center">
        <button id="triggernovochiste" data-toggle="modal" data-target="#modalchistes"><img src="img/add.png"></button>
    </article>

    <section id="chistes" class="row my-sm-2">
        <div class="col-sm-3"><h2>nombre chiste</h2></div><div class="text-danger col-sm-6"><h4>(Categoria chiste)</h4></div>
        <div class="col-sm-12"><h4>Nombre Usuario</h4></div>
        <div class="col-sm-12"><h6>CHISTES JAJAJJAJAJAJAJSJJASDAS SAJD JKASNDJ SADN SAJKDH ASD KASJKD KLASDJJH ASHDJ ASHJNDOPA JSDFAS�DK KLASH DFI�S^DK LASJP=DK KASMDK MASKKDL ASLKD L</h6></div>
        <div class="col-sm-2"><input onclick="" value="loco" type="checkbox">Opcion 1</div>
    </section>
</section>



<div class="modal fade" id="modalcategorias" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Creaci�n de Categoria</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Nueva Categor�a</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js" ></script>
<script type="text/javascript" src="js/myjs.js"></script>
</body>
</html>