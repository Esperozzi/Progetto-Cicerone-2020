<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../Resources/now-ui-kit.css" type="text/css">
    <title>Calendario</title>
</head>

<body>

{user->getUsername assign='Username'}
{user->getModeratore assign='Tipo'}

<!-- Navbar here -->

{include file="navbar.tpl"}

<div class="py-5">
    <div class="container">
        <div class="row ">
            <div class="col pb-3" > Prossimi Eventi</div>
            {if $Tipo}
                <a class="col pb-3" href="../evento/create"> Crea un Evento</a>{/if}
            <form method="POST"  action="../evento/order">
                <select name="option" required>
                    <option value="Data">Data</option>
                    <option value="Luogo">Luogo</option>
                </select>
                <input type="submit" class="btn btn-primary " value="Submit">
            </form>


            {section name=k loop=$results}
                {if !empty($results[k]->getStartDate())}
                {$data=$results[k]->getStartDate()}{/if}
                {if $data> date_create()}
            <div class="col-md-12">
                <div class="row border">
                    <span class="col- border"><img class="img-fluid d-block pi-draggable " src="../Resources/assets/EventImages/{$results[k]->getId()}.png" width="100" height="100"></span>

                    <span class="col text-center border ">
                            <a class="px-5" href="../evento/show?{$results[k]->getId()}">
                                {$results[k]->getNome()}</a></span>
                            {$fascia=$results[k]->getFasce()}
                        {if $fascia}
                        <span class="col text-center border">{$fascia[0]->getDataStr()}</span>{/if}
                        <span class="col text-center border">{$results[k]->getLuogo()->getNome()}</span>

                </div>
            </div>
                {/if}
            {/section}
            <div class="col pb-3" > Eventi Passati</div>
            {section name=k loop=$results}
                {if !empty($results[k]->getStartDate())}
                    {$data=$results[k]->getStartDate()}{/if}
                {if $data< date_create()}
                    <div class="col-md-12">
                        <div class="row border">
                            <span class="col- border"><img class="img-fluid d-block pi-draggable " src="../Resources/assets/EventImages/{$results[k]->getId()}.png" width="100" height="100"></span>

                            <span class="col text-center border ">
                            <a class="px-5" href="../evento/show?{$results[k]->getId()}">
                                {$results[k]->getNome()}</a></span>
                            {$fascia=$results[k]->getFasce()}
                            {if $fascia}
                                <span class="col text-center border">{$fascia[0]->getDataStr()}</span>{/if}
                            <span class="col text-center border">{$results[k]->getLuogo()->getNome()}</span>

                        </div>
                    </div>
                {/if}
            {/section}
        </div>
    </div>
</div>

</body>
</html>