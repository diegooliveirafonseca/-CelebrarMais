<%@ page import="com.acception.cadastro.Notificacao; com.acception.cadastro.TipoNotificacao; com.acception.Util.Util" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Gerência de Fundos"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'leaf.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:stylesheet src="sweet-alert.css"/>
    <asset:stylesheet src="jquery-ui.min.css"/>
    <asset:javascript src="sweet-alert.js"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'jquery.tag-editor.css')}"/>
    %{--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>--}%
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.tag-editor.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.caret.min.js')}"></script>
    <link href="${resource(dir: 'css/fonts', file: 'fonts.css')}" rel="stylesheet">
    <g:layoutHead/>
    <style>
    .form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control {
        background-color: rgba(238, 238, 238, 0.28) !important;
        opacity: 1 !important;
    }

    .nav .open > a, .nav .open > a:focus, .nav .open > a:hover, #nav-top.navbar-static-top > ul > li > a:focus, #nav-top.navbar-static-top > ul > li > a:hover, #nav-top.navbar-static-top > ul > li > a:active {
        background-color: #aad04c;
        color: #FFFFFF;
    }
    </style>
</head>
<style>
.property-label {
    width: 30% !important;
}
</style>

<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav id="nav-top" class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <g:if env="homologation">
                <div class="navbar-text flash-enviroment" style="color: green; font-weight: bold">Homologação</div>
            </g:if>
            <g:elseif env="development">
                <div class="navbar-text flash-enviroment"
                     style="color: #ffff00; font-weight: bold">Desenvolvimento</div>
            </g:elseif>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">

            <sec:ifAnyGranted roles="ROLE_ORCAMENTARIO,ROLE_SUPORTE, ROLE_ASSISTENTE">
                <li class="dropdown" title="Notificações">
                    <%
                        def notificacoes = com.acception.cadastro.Notificacao.createCriteria().list() {
                            ge('dataNotificacao', Util.removeTime(new Date()))
                        }
                        def f = new java.text.SimpleDateFormat('dd/MM/yyyy')
                    %>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="true">
                        ${notificacoes?.size() > 1 || notificacoes?.size() == 0 ? notificacoes?.size() + ' novas notificações' : notificacoes?.size() + ' nova notificação'} <i
                            class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <g:if test="${notificacoes?.size() > 0}">
                            <g:each in="${notificacoes.sort { !it.diaDePrestarConta }}" var="notificacaoInstance"
                                    status="i">j
                                <g:if test="${i < 5}">
                                    <li>
                                        <g:link controller="${notificacaoInstance?.entidade}" action="show"
                                                id="${notificacaoInstance?.idEntidade}" params="[origem: 'orcamento']">
                                            <div>
                                                <i class="fa fa-calculator fa-fw"></i> ${notificacaoInstance?.mensagem}
                                                <span class="pull-right text-muted small">
                                                    <g:if test="${notificacaoInstance?.tipo.equals(com.acception.cadastro.TipoNotificacao.PRESTACAO_CONTAS_NO_DIA)}">
                                                        <img src="${resource(file: 'images/warning-red.png')}"
                                                             style="height: 20px;"/>
                                                    </g:if>
                                                    <g:else>
                                                        <img src="${resource(file: 'images/warning-yellow.png')}"
                                                             style="height: 20px;"/>
                                                    </g:else>

                                                </span>
                                            </div>
                                        </g:link>
                                    </li>
                                    <li class="divider"></li>
                                </g:if>
                            </g:each>
                        </g:if>
                        <g:else>
                            <li>
                            <g:link action="index" controller="notificacao"
                                    params="[searchDataNotificacao: f.format(Util.removeTime(new Date()))]"
                                    class="text-center" href="#">
                                    <div>
                                        <i class="fa fa-calculator fa-fw"></i> Não há notificações para hoje.
                                        <span class="pull-right text-muted small">
                                            <g:formatDate format="dd/MM/yyyy" date="${new Date()}"/>
                                        </span>
                                    </div>
                            </li>
                            <li class="divider"></li>
                            </g:link>
                        </g:else>
                        <li>
                            <g:link action="index" controller="notificacao"
                                    params="[searchDataNotificacao: f.format(Util.removeTime(new Date()))]"
                                    class="text-center" href="#">
                                <strong>Ver todas as notificaçoes</strong>
                                <i class="fa fa-angle-right"></i>
                            </g:link>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
            </sec:ifAnyGranted>
            <li class="dropdown">
                <a data-toggle="dropdown" href="#" class="usuario-logado">
                    <sec:ifLoggedIn>
                        <sec:username/>
                    </sec:ifLoggedIn>
                    <i class="fa fa-user fa-fw"></i>
                </a>
            <li style="
            color: white;
            ">
                |
            </li>
            <sec:ifLoggedIn>
                <li>
                    <g:link controller="logout" class="usuario-logado"><i
                            class="fa fa-sign-out fa-fw"></i> Sair</g:link>
                </li>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
                <li>
                    <g:link methods="POST" controller="login" class="usuario-logado"><i
                            class="fa fa-sign-in fa-fw"></i> Login</g:link>
                </li>
            </sec:ifNotLoggedIn>
        <!-- /.dropdown-user -->
        </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->
    </nav>
    <!-- /.navbar-static-side -->

    <div id="#side-menu" class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li id="coop_logo">
                    <g:link controller="home" action="dashboard"><img
                            src="${resource(dir: "images", file: "logo-fundodema.png")}" width="100%"/></g:link>
                </li>
                <g:render template="/layouts/menu-lateral"/>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="page-header">
                    <h1><g:layoutTitle/></h1>
                </div>
            </div>
            <div class="row">
                <g:layoutBody/>
                <hr>
            </div>
        </div>
    </div>

    <sec:ifSwitched>
        <div style="position: fixed; bottom: 1em; right: 1em">
            <a style="border-radius: 0" class="btn btn-danger btn-lg"
               href='${request.contextPath}/j_spring_security_exit_user'>
                <i class="fa fa-arrow-left fa-fw"></i>
                Voltar para <sec:switchedUserOriginalUsername/>
            </a>
        </div>
    </sec:ifSwitched>

    <div class="footer-logado">
        <p style="text-align: center; position: relative !important;"><b>Acception Tecnologia</b>® Copyright. Todos os direitos reservados.
        </p>
    </div>

</div>
<script>
    $(function () {
        $(".datepicker").datepicker({
            format: 'dd/mm/yyyy',
            language: 'pt-BR',
            autoclose: true
        }).on('changeDate', function (ev) {
            $(this).datepicker('hide');
        });
        $(".currency").maskMoney({
            prefix: 'R$ ',
            allowNegative: true,
            thousands: '.',
            decimal: ',',
            affixesStay: false
        });
        $('.percent').mask('##0,00%', {reverse: true});
    });
</script>
</body>
</html>
