<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
  <link rel="stylesheet" href="../Pld/now-ui-kit.css" type="text/css">
  <link rel="stylesheet" href="../Pld/assets/css/nucleo-icons.css" type="text/css">
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>Html Test</title>
</head>

<body class="">

{user->getUsername assign='Username'}

<!-- Navbar here -->
{include file="navbar.tpl"}

  <!-- Sezione Proposta -->
<div style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(https://static.pingendo.com/cover-bubble-dark.svg);  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;">
  {if $proposta->getTipoProposta() == "Creazione"}

    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;">Proposta di Creazione di questo Avatar: </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> Proprietario : {$proposta->getProposto()->GetProprietario()->GetUsername()} </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> {$proposta->getProposto()->getNome()} </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> {$proposta->getProposto()->getClasse()} </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> {$proposta->getProposto()->getRazza()} </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> {$proposta->getProposto()->getLivello()} </p>
    </div>

  {/if}

  {if $proposta->getTipoProposta() == "Modifica"}

      <div class="col-md-3" style="Text-align:center">
          <p style="color:White;">Proposta di Modifica di questo Avatar: </p>
      </div>

      <div class="col-md-3" style="Text-align:center">
          <p style="color:White;">Proprietario : {$proposta->getModificato()->GetProprietario()->GetUsername()}</p>
      </div>

      <div class="row" align="center">
          <div>
            <div class="col-md-3" style="Text-align:center">
              <p style="color:White;">Vecchio nome:</p>
            </div>
            <div class="col-md-3" style="Text-align:center">
              <p style="color:White;">Vecchia classe:</p>
            </div>
            <div class="col-md-3" style="Text-align:center">
              <p style="color:White;">Vecchia razza:</p>
            </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">Vecchio livello:</p>
              </div>
          </div>
          <div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">{$proposta->getModificato()->getNome()}</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">{$proposta->getModificato()->getClasse()}</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">{$proposta->getModificato()->getRazza()}</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">{$proposta->getModificato()->getLivello()}</p>
              </div>
          </div>
          <div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">Nuovo nome:</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">Nuova classe:</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">Nuova razza:</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">Nuovo livello:</p>
              </div>
          </div>
          <div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">{$proposta->getProposto()->getNome()}</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">{$proposta->getProposto()->getClasse()}</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">{$proposta->getProposto()->getRazza()}</p>
              </div>
              <div class="col-md-3" style="Text-align:center">
                  <p style="color:White;">{$proposta->getProposto()->getLivello()}</p>
              </div>
          </div>
      </div>

  {/if}

  {if $proposta->getTipoProposta() == "Cancellazione"}

    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;">Proposta di Cancellazione di questo Avatar: </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> Proprietario : {$proposta->getModificato()->GetProprietario()->GetUsername()} </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> {$proposta->getModificato()->getNome()} </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> {$proposta->getModificato()->getClasse()} </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> {$proposta->getModificato()->getRazza()} </p>
    </div>
    <div class="col-md-3" style="Text-align:center">
      <p style="color:White;"> {$proposta->getModificato()->getLivello()} </p>
    </div>

  {/if}

  <a class="btn navbar-btn ml-md-2 btn-light text-dark" href="/playadice/proposta/approva?{$proposta->getId()}"> Approva </a>
  <a class="btn navbar-btn ml-md-2 btn-light text-dark" href="/playadice/proposta/rifiuta?{$proposta->getId()}"> Rifiuta </a>

</div>
<!-- Sezione Our Team -->
</body>

</html>