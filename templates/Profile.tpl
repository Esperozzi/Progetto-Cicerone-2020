<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../Resources/now-ui-kit.css" type="text/css">
    <title>Profile - {$utente->getUsername()}</title>
</head>
<body>

{user->getUsername assign='Username'}




<!-- Navbar here -->

{include file="navbar.tpl"}
<hr>


<div class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="px-5 col-lg-6 flex-column align-items-start justify-content-center order-1 order-lg-2" >
                <div class="card ">
                    <div class="card-body">

                        <h5 class="card-title text-center "><b>Utente: {$utente->getUsername()}</b></h5>

                        <h6 class="card-subtitle my-2 text-muted ">Nome: {$utente->getNome()}</h6>
                        <h6 class="card-subtitle my-2 text-muted ">Cognome: {$utente->getCognome()}</h6>
                        <h6 class="card-subtitle my-2 text-muted ">Email: {$utente->getMail()}
                            </b></b></h6>
                        <div class="row">

                            <div class="col-xl-4 text-center "><b><a class="btn btn-primary" href="/playadice/utente/modifyMyUtente">Modifica Dati</a> </b></div>

                            <div class="col-xl-4  "><b><a class="btn btn-primary" href="/playadice/utente/modifymypassword">Modifica Password</a> </b></div>

                            <div class="col-xl-4 text-center "><b><a class="btn btn-primary" href="/playadice/utente/removemyutente">Elimina</a> </b></div>







                        </div>




                    </div>


                </div>
                {if $UtenteType eq 'admin'}
                    <div class="col-xl-6 text-center py-4 text-center "><b><a class="btn btn-primary" href="/playadice/admin/openAdminPanel" >AdminPanel</a> </b></div>
                {/if}
            </div>

        </div>

    </div>

</div>


</body>

</html>

