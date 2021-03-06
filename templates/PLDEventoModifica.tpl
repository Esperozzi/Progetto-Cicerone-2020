<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="../Resources/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../Resources/now-ui-kit.css" type="text/css">
    <title>Modifica</title>
</head>

<body>

{user->getUsername assign='Username'}

<!-- Navbar here -->

{include file="navbar.tpl"}

<div class="card ">
    <form method="post" id="c_form-h" class="" action="updateEvento?{$results[0]->getId()}">
        <div class="py-5">
            <div class="container ">
                <div class="col-md-12">
                    <div class="form-group row">
                        <label for="name-input" class="col-2 col-form-label"><b>Nome Evento</b></label>
                        <div class="col-10">
                            <input type="text" name="nome" class="form-control " value="{$results[0]->getNome()}">
                        {if ! $check.Nome}
                            <div class="alert alert-warning" style="width: 40%; font-size: 11px;">

                                Lunghezza massima 45 Caratteri.

                            </div>
                        {/if}</div>
                    </div>
                    <div class="form-group row">
                        <label for="category-input" class="col-2 col-form-label"><b>Categoria</b></label>
                        <div class="col-10 ">
                            <select class="form-control " name="categoria" id="inlineFormCustomSelect">
                                <option selected="" placeholder="Choose...">Choose...</option>
                                <option value="Torneo">Torneo</option>
                                <option value="Gioco Libero">Gioco Libero</option>
                                <option value="Giochi Di Ruolo">Giochi Di Ruolo</option>
                                <option value="Dimostrazione">Dimostrazione</option>
                                <option value="Altro">Fiera</option>
                                <option value="Altro">Altro</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col " for="category-input">
                            <div class="pb-3">
                                <b>Luogo</b></div>
                            <div class=" form-group row">
                                <label for="name-input " class="my-auto px-4 "><b>Nome</b></label>
                                <div class="col-4 ">
                                    <input type="text" name="nomeluogo" class="form-control" value="{$results[0]->getLuogo()->getNome()}">

                                </div>
                                <label for="name-input " class="my-auto"><b>Via</b></label>
                                <div class="col ">
                                    <input type="text" name="via" class="form-control" value="{$results[0]->getLuogo()->getVia()}"> </div>

                            </div>
                            <div class="form-group row">
                                {if ! $check.NomeLuogo}
                                    <div class="alert alert-warning" style="width: 30%; font-size: 11px;">

                                        Il nome del luogo non può essere vuoto e deve contenere massimo 45 caratteri

                                    </div>
                                {/if}
                                {if ! $check.Via}
                                    <div class="col-sm-3"></div>
                                    <div class="alert alert-warning" style="width: 30%; font-size: 11px;">

                                        La Via non può essere vuota e deve contenere massimo 45 caratteri

                                    </div>
                                {/if}
                            </div>
                            <div class="form-group row">
                                <label for="name-input " class="my-auto px-4 "><b>Città</b></label>
                                <div class="col-5  px-4 ">
                                    <input type="text" name="citta" class="form-control" value="{$results[0]->getLuogo()->getCitta()}">

                                </div>
                                <label for="name-input " class="my-auto"><b>CAP</b></label>
                                <div class="col  ">
                                    <input type="text" name="cap" class="form-control" value="{$results[0]->getLuogo()->getCap()}"> </div>
                                <div class=" form-group row ">
                                    {if ! $check.Citta}
                                        <div class="alert alert-warning" style="width: 30%; font-size: 11px;">
                                            La Città non può essere vuota e deve contenere massimo 45 caratteri

                                        </div>
                                    {/if}
                                    <div class="col  "></div>

                                    {if ! $check.Cap}
                                        <div class="alert alert-warning" style="width: 30%; font-size: 11px;">

                                            Il Cap non può essere vuoto e deve contenere 5 caratteri numerici

                                        </div>
                                    {/if}</div>
                            </div>
                        </div>
                    </div>



                    <div>
                        <div class="form-group row"> <label for="name-input" class="col-2 col-form-label"><b>Aggiungi una Fascia (Minimo 1)</b></label>

                        </div>
                        {if !$check.Fasce}
                            <div class="alert alert-warning">
                                <small >
                                    Errore in una fascia, inserire nel formato dd/mm/yyyy hh:mm:ss o una data inserita è già passata o
                                    la data di fine è precedente a quella d'inizio
                                </small>
                            </div>
                        {/if}

                        {for $foo=1 to 10}
                            {$fasce=$results[0]->getFasce()}
                            {$numfascia=$foo-1}
                            {if !empty($fasce[$numfascia])}


                            <div class={if $foo>1}"collapse"{/if} id="{$foo}">
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label"><b>Giorno di Inizio</b></label>
                                    <div class="col-10">
                                        <input type="text" name="{$foo}" class="form-control" id="example-date-input" placeholder="gg/mm/aaaa HH:mm:ss" {if isset($prec.$foo)}
                                               value="{$prec.$foo}"
                                               {else}value="{$fasce[$numfascia]->getDataStr()}{/if}">
                                    </div>
                                    <label  class="col-2 col-form-label"><b>Giorno di Fine</b></label>
                                    <div class="col-10">
                                        <input type="text" name="{$foo+11}" class="form-control" id="example-date-input" placeholder="gg/mm/aaaa HH:mm:ss" {$name=$foo+11}
                                                {if isset($prec.$name)}
                                            value="{$prec.$name}"
                                               {else} value="{$fasce[$numfascia]->getDataFine()}" {/if}>
                                    </div>
                                </div>
                            </div>
                                {if $foo>1}<a class="btn   btn-primary" data-toggle="collapse" href="#{$foo}" role="button" name="bottone" aria-expanded="false" aria-controls="#{$foo}">
                                        +
                                    </a>{/if}


                            {else}

                            <div class="collapse" id="{$foo}">
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label"><b>Giorno di Inizio</b></label>
                                    <div class="col-10">

                                        <input type="text" name="{$foo}" class="form-control" id="example-date-input" placeholder="gg/mm/aaaa HH:mm:ss" >
                                    </div>
                                    <label  class="col-2 col-form-label"><b>Giorno di Fine</b></label>
                                    <div class="col-10">
                                        <input type="text" name="{$foo+11}" class="form-control" id="example-date-input" placeholder="gg/mm/aaaa HH:mm:ss" >
                                    </div>
                                </div>


                            </div>
                            {/if}
                            {if $foo>1}<a class="btn   btn-primary" data-toggle="collapse" href="#{$foo}" role="button" name="bottone" aria-expanded="false" aria-controls="#{$foo}">
                                    +
                                </a>{/if}
                        {/for}
                    </div>
                    <div class="form-group row">
                        <label for="checkbox input" class="col-2 col-form-label"><b>Prenotazione</b></label>
                        <div class="pl-4 col-form-label align-content-center pt-3">
                            <input type="checkbox" class="custom-checkbox" id="checkbox input" value="1"{if $results[0]->getFlag()}checked{/if} name="prenotazione"></div>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1"><b>Descrizione</b></label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" name="testo" rows="3" >{$results[0]->getTesto()}</textarea>
                        {if ! $check.Descrizione}
                            <div class="alert alert-warning">
                                <small >
                                    Lunghezza massima 200 Caratteri Numerici
                                </small>
                            </div>
                        {/if}
                    </div>
                    <div class="text-right">
                        <button type="submit" class="btn btn-primary " >Avanti</button></div>
                </div>
            </div>
        </div>
    </form>

</div>

</body>

</html>

