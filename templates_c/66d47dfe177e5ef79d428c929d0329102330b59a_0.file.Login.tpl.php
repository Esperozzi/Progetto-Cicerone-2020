<?php
/* Smarty version 3.1.34-dev-7, created on 2020-07-09 14:18:04
  from 'D:\XAMPP2\htdocs\playadice\templates\Login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5f070afc91f453_98941072',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '66d47dfe177e5ef79d428c929d0329102330b59a' => 
    array (
      0 => 'D:\\XAMPP2\\htdocs\\playadice\\templates\\Login.tpl',
      1 => 1593938106,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:navbar.tpl' => 1,
  ),
),false)) {
function content_5f070afc91f453_98941072 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
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
    <title>Login/SignUp</title>
</head>

<body class="">

<?php $_smarty_tpl->assign('Username',$_smarty_tpl->smarty->registered_objects['user'][0]->getUsername(array(),$_smarty_tpl));?>


<?php $_smarty_tpl->_subTemplateRender("file:navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<div class="container text-center ">
    <div class="col-sm-3">
    </div>

        <h2>Login</h2>
        <hr> <?php if ($_smarty_tpl->tpl_vars['error']->value) {?>
        <div class="alert alert-warning">
            <!-- Errore-->
            <strong>Attenzione!</strong><br>Username o Password errati. <br>Per favore riprova. </div> <?php }?>

        <!-- FORM -->
        <form class="form-horizontal" method="post" action="login">
            <!-- Nickname -->
            <div class="form-group row">
                <label for="user" class="col-md-5 col-form-label">Username:</label>
                <div class="col-lg-5">
                    <input type="text" class="form-control border-primary" id="user" name="Username" placeholder="Username"  maxlength="20">
                </div>
            </div>
            <div class="form-group row">
                <!-- Campo password -->
                <label for="inputPassword" class="col-sm-5 col-form-label col">Password:</label>
                <div class="col-lg-5">
                    <input type="password" class="form-control border-primary" id="inputPassword" name="Password" placeholder="Password" maxlength="20">
                </div>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </form>

        <a href="/playadice/utente/signup">
            Clicca qui per registrarti
        </a>

</div>
</div>
</body>
</html><?php }
}