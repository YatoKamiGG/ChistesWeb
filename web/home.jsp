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
            <button id="triggercate" data-toggle="modal" data-target="#modalcategorias" class="offset-sm-1 col-sm-1 btn btn-link"><img src="img/add.png"></button>
            <a class="col-sm-2 offset-sm-1" href="#">Mejores chistes</a>
        </div>
    </article>
</header>

    <article class="text-center">
        <button id="triggernovochiste" class="btn btn-link" data-toggle="modal" data-target="#modalchistes"><img src="img/add.png"></button>
    </article>

    <section id="chistes" class="row my-sm-2">
        <div class="col-sm-3"><h2>nombre chiste</h2></div><div class="text-danger col-sm-6"><h4>(Categoria chiste)</h4></div>
        <div class="col-sm-12"><h4>Nombre Usuario</h4></div>
        <div class="col-sm-12"><h6>CHISTES JAJAJJAJAJAJAJSJJASDAS SAJD JKASNDJ SADN SAJKDH ASD KASJKD KLASDJJH ASHDJ ASHJNDOPA JSDFASÑDK KLASH DFIÄS^DK LASJP=DK KASMDK MASKKDL ASLKD L</h6></div>
        <div class="col-sm-2"><input onclick="" value="loco" type="checkbox">Opcion 1</div>
    </section>
</section>


<!-- Modal añadir categorias -->
<div class="modal fade" id="modalcategorias" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Creación de Categoria</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Nueva Categoría</label>
                        <textarea class="form-control" name="Categoria" id="exampleFormControlTextarea1" rows="3"></textarea>
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


<!-- Modal añadir chistes -->
<div class="modal fade" id="modalchistes" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Añadir Chistes</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="#" method="post">

              <!-- Text input-->
              <div class="form-group">
                  <label class="col-md-4 control-label" for="Apodo">Apodo</label>
                  <div class="col-md-12">
                      <input id="Apodo" name="Apodo" type="text" placeholder="Apodo" class="form-control input-md">
                  </div>
              </div>

              <!-- Textarea -->
              <div class="form-group">
                  <label class="col-md-4 control-label" for="Chiste">Chiste</label>
                  <div class="col-md-12">
                      <textarea class="form-control" id="Chiste" name="Chiste">Escribe tu chiste aquí</textarea>
                  </div>
              </div>

              <!-- Select Basic -->
              <div class="form-group">
                  <label class="col-md-4 control-label" for="Categoria">Categoria</label>
                  <div class="col-md-12">
                      <select id="Categoria" name="Categoria" class="form-control">
                          <option value="1">Option one</option>
                          <option value="2">Option two</option>
                      </select>
                  </div>
              </div>

              <!-- Text input-->
              <div class="form-group">
                  <label class="col-md-4 control-label" for="Titulo">Titulo</label>
                  <div class="col-md-12">
                      <input id="Titulo" name="Titulo" type="text" placeholder="Titulo del chiste" class="form-control input-md">
                  </div>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                  <button type="submit" class="btn btn-primary">Confirmar</button>
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