<?php
/* Smarty version 3.1.34-dev-7, created on 2020-07-11 18:24:59
  from 'C:\xampp\htdocs\playadice\templates\PLDPrenotazioni.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5f09e7dbb29486_36224217',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1568a11b55b425dd88943620e3e3b40df8167879' => 
    array (
      0 => 'C:\\xampp\\htdocs\\playadice\\templates\\PLDPrenotazioni.tpl',
      1 => 1594484697,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:navbar.tpl' => 1,
  ),
),false)) {
function content_5f09e7dbb29486_36224217 (Smarty_Internal_Template $_smarty_tpl) {
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
    <title>Prenotazioni</title>
</head>

<body>

<?php $_smarty_tpl->assign('Username',$_smarty_tpl->smarty->registered_objects['user'][0]->getUsername(array(),$_smarty_tpl));?>

<?php $_smarty_tpl->assign('Tipo',$_smarty_tpl->smarty->registered_objects['user'][0]->getModeratore(array(),$_smarty_tpl));?>


<!-- Navbar here -->

<?php $_smarty_tpl->_subTemplateRender("file:navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<div class="py-5">
    <div class="container">
        <div class="row ">
            <?php if (empty($_smarty_tpl->tpl_vars['results']->value)) {?>Non sono presenti prenotazioni<?php }?>
            <?php
$__section_k_0_loop = (is_array(@$_loop=$_smarty_tpl->tpl_vars['results']->value) ? count($_loop) : max(0, (int) $_loop));
$__section_k_0_total = $__section_k_0_loop;
$_smarty_tpl->tpl_vars['__smarty_section_k'] = new Smarty_Variable(array());
if ($__section_k_0_total !== 0) {
for ($__section_k_0_iteration = 1, $_smarty_tpl->tpl_vars['__smarty_section_k']->value['index'] = 0; $__section_k_0_iteration <= $__section_k_0_total; $__section_k_0_iteration++, $_smarty_tpl->tpl_vars['__smarty_section_k']->value['index']++){
?>
            <div class="col-md-12">
                <div class="row border">
                    <span class="col text-center border ">
                            <span class="px-5" >
                                <?php $_smarty_tpl->_assignInScope('nome', $_smarty_tpl->tpl_vars['results']->value[(isset($_smarty_tpl->tpl_vars['__smarty_section_k']->value['index']) ? $_smarty_tpl->tpl_vars['__smarty_section_k']->value['index'] : null)]->getUtente());?>
                            <?php echo $_smarty_tpl->tpl_vars['nome']->value->getusername();?>
</span></span>
                        <span class="col text-center border"><?php echo $_smarty_tpl->tpl_vars['results']->value[(isset($_smarty_tpl->tpl_vars['__smarty_section_k']->value['index']) ? $_smarty_tpl->tpl_vars['__smarty_section_k']->value['index'] : null)]->getDataStr();?>
</span>

                </div>
            </div>
            <?php
}
}
?>
        </div>
    </div>
</div>

</body>
</html><?php }
}