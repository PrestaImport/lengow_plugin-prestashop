<!--<link rel="stylesheet" type="text/css" href="/modules/lengow/views/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/modules/lengow/views/css/bootstrap.min.css.map">
<link rel="stylesheet" type="text/css" href="/modules/lengow/views/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/modules/lengow/views/css/bootstrap-theme.min.css.map">-->
<link rel="stylesheet" type="text/css" href="/modules/lengow/views/css/bootstrap-switch.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/modules/lengow/views/css/lengow_bootstrap.css">
<link rel="stylesheet" type="text/css" href="/modules/lengow/views/css/admin.css">
{if version_compare($smarty.const._PS_VERSION_,'1.5','<')}
    <link rel="stylesheet" type="text/css" href="/modules/lengow/views/css/admin14.css">
{/if}
<link rel="stylesheet" href="/modules/lengow/views/css/font-awesome.css">

<ul class="nav nav-pills lengow-nav">
    <li role="presentation" id="logoLengow">
        <img src="/modules/lengow/views/img/lengow-white.png" alt="lengow">
    </li>
    <li role="presentation" class="{if $current_controller == 'AdminLengowHome'}active{/if}" id="home"><a href="
            {$lengow_link->getAbsoluteAdminLink('AdminLengowHome')}">Home</a></li>
    <li role="presentation" class="{if $current_controller == 'LengowFeedController'}active{/if}"><a href="
            {$lengow_link->getAbsoluteAdminLink('AdminLengowFeed')}">Product</a></li>
    <li role="presentation" class="{if $current_controller == 'AdminLengowProduct'}active{/if}"><a href="
            {$lengow_link->getAbsoluteAdminLink('AdminLengowProduct')}">Lengow Products</a></li>
    <li role="presentation" class="{if $current_controller == 'AdminLengowLog'}active{/if}"><a href="
            {$lengow_link->getAbsoluteAdminLink('AdminLengowLog')}">Logs</a></li>
    <li role="presentation" class="{if $current_controller == 'AdminLengowConfig'}active{/if}"><a href="
            {$lengow_link->getAbsoluteAdminLink('AdminLengowConfig')}">Configuration</a></li>
    <li role="presentation" class="{if $current_controller == 'AdminLengowLogConfig'}active{/if}"><a href="
            {$lengow_link->getAbsoluteAdminLink('AdminLengowLogConfig')}">Configuration Logs</a></li>
</ul>

<ol class="breadcrumb lengow_breadcrumb">
    <li><a href="
    {if version_compare($smarty.const._PS_VERSION_,'1.5','>=')}
    {$link->getAdminLink('AdminLengowHome')}
    {else}#
    {/if}">Lengow</a></li>
    {if $current_controller != 'AdminLengowHome'}
        <li class="active">{$breadcrumb_title}</li>
    {/if}
</ol>
<script type="text/javascript" src="/modules/lengow/views/js/jquery.1.11.3.min.js"></script>
<script type="text/javascript">
    var lengow_jquery = $.noConflict(true);
</script>
<script type="text/javascript" src="/modules/lengow/views/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/modules/lengow/views/js/admin.js"></script>
<script type="text/javascript" src="/modules/lengow/views/js/bootstrap-switch.js"></script>
<script type="text/javascript" src="/modules/lengow/views/js/clipboard.js"></script>
