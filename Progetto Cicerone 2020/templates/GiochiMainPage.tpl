<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
  <link rel="stylesheet" href="../Pld/now-ui-kit.css" type="text/css">
  <link rel="stylesheet" href="../Pld/assets/css/nucleo-icons.css" type="text/css">
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>Catalogo</title>
</head>

<body class="">
{include file="navbar.tpl"}
  <!-- Sezione Ricerca here -->
  <div class="column" draggable="true" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(https://static.pingendo.com/cover-bubble-dark.svg);  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;">
    <div class="container" style="background-color:#E3E3E3">
      <form method="post" id="Ricercaform">
        <div class="row">
          <label for="Parametro">Parametro:</label><br>
          <input type="text" id="Parametro" name="Parametro">
          <label for="Tipo">Scegli un tipo di ricerca:</label>
          <select id="Tipo" name="TipoRicerca" form="carform">
            <option value="Nome">Nome</option>
            <option value="Categoria">Categoria</option>
            <option value="Altro">Altro</option>
          </select>
          <button> Cerca </button>
        </div>
      </form>
    </div>
    <!-- Sezione I miei PG here -->
    <a class="row pi-draggable">
      <div class="col-md-2" >
        <p style="color:White;">Nome</p>
      </div>
      <div class="col-md-2" >
        <p style="color:White;">Rate</p>
      </div>
        <div class="col-md-2" >
          <p style="color:White;">Categoria</p>
        </div>
      {foreach $array as $gioco}

        <a class="btn btn-primary text-dark container">
          <div class="row pi-draggable" draggable="true">
            <div class="col-md-2">
              <p style="color:White;">{$gioco->getNome()}</p> </div>
            <div class="col-md-2"> <p style="color:White;"> {$gioco->getVotoMedio()}</p> </div>
            <div class="col-md-2">  <p style="color:White; text-align: center">{$gioco->getCategoria()}</p> </div>
          </div>

        </a>


      {/foreach}


    </div>
    <!-- Fine Sezione -->
    <br>

    <!-- Fine Sezione -->
  </div>
  <!-- Sezione Our Team -->
</body>

</html>