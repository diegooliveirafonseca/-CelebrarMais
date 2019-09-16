<sec:ifNotGranted roles="ROLE_VISAO_EDITAIS">
    <li>
        <g:form controller="projeto" action="buscaRapida" style="background-color: #F6F6F6;">
            <div class="input-group" style="padding: 3px;">
                <g:textField class="form-control" name="palavraChave" value="${palavraChave}" required=""/>

                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
                </span>
            </div>
        </g:form>
    </li>

    <li>
        <g:link class="menu-logado" action="dashboard" controller="home"><i class="fa fa-dashboard fa-fw"></i> Início</g:link>
    </li>

    %{--INÍCIO DE CADASTROS--}%
    <li>
        <a href="#" class="menu-logado"><i class="fa fa-archive"></i> Cadastros<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li class="controller"><g:link class="submenu-logado" action="index" controller="financiador">Financiador</g:link></li>
            <li class="controller"><g:link class="submenu-logado" action="index" controller="documentoLegal">Edital/Chamada/Especial</g:link></li>
            <li class="controller"><g:link class="submenu-logado" controller="organizacaoSocial">Organizações/Instituições</g:link></li>
            <li class="controller"><g:link class="submenu-logado" action="index" controller="projeto">Projetos Sociais</g:link></li>

    <sec:ifAnyGranted roles="ROLE_ATIVIDADES,ROLE_ATIVIDADES_EDICAO,ROLE_SUPORTE">
            <li class="controller"><g:link class="submenu-logado" action="index" controller="atividade">Atividades</g:link></li>
    </sec:ifAnyGranted>
        </ul>
    </li>

    %{--SISTEMATIZAÇÃO--}%
    <sec:ifAnyGranted roles="ROLE_SUPORTE, ROLE_ASSISTENTE, ROLE_ESPECTADOR,ROLE_ORCAMENTARIO">
        <li>
            <a href="#" class="menu-logado"><i class="fa fa-table"></i> Sistematização<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                <li class="controller"><g:link class="submenu-logado" action="index" controller="balancoGeral">Balanço Geral</g:link></li>
                <li class="controller"><g:link class="submenu-logado" action="index" controller="relatorioSituacaoProjeto">Situação Quantitativa do Projeto</g:link></li>
                <li class="controller"><g:link class="submenu-logado" action="index" controller="chamadasRegiaoMunicipio">Chamada por Região/Município</g:link></li>
                <li class="controller"><g:link class="submenu-logado" action="index" controller="totalProjetosPorAno">Total Projetos/Ano</g:link></li>
                <li class="controller"><g:link class="submenu-logado" action="index" controller="relatorioDeIndicadores">Relatório de Indicadores</g:link></li>
                <li class="controller"><g:link class="submenu-logado" action="index" controller="relatorioClassificacaoObjetivo">Relatório de Classificação p/ Objetivos</g:link></li>
            </ul>
        </li>
    </sec:ifAnyGranted>

    %{--OPERAÇÃO--}%
    <sec:ifAnyGranted roles="ROLE_SUPORTE">
    <li>
        <a href="#" class="menu-logado"><i class="fa fa-cogs"></i> Operação<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">

            <sec:ifAnyGranted roles="ROLE_MASTER, ROLE_SUPORTE, ROLE_ADMINISTRADORA, ROLE_ASSISTENTE">
                <li>
                    <g:link controller="uploadTabela" class="submenu-logado" action="indexFlexivel">Importar Base de Projetos</g:link>
                </li>
                <li>
                    <g:link controller="projeto" class="submenu-logado" action="duplicados">Verificar Projetos Duplicados</g:link>
                </li>
                <li>
                    <g:link controller="organizacaoSocial" class="submenu-logado" action="duplicados">Verificar Organizações Duplicadas</g:link>
                </li>
            </sec:ifAnyGranted>

            <li>
                <g:link controller="exportacaoTabela" class="submenu-logado" action="index">Exportar Base de Projetos</g:link>
            </li>
        </ul>
        <!-- /.nav-second-level -->
    </li>
    </sec:ifAnyGranted>

    %{--SISTEMA--}%
    <sec:ifAnyGranted roles="ROLE_MASTER, ROLE_SUPORTE">
    <li>
        <a href="#" class="menu-logado"><i class="fa fa-wrench fa-fw"></i> Sistema<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li>
                <g:link class="submenu-logado" controller="console" target="Console">Console</g:link>
            </li>
            <li><g:link class="submenu-logado" controller="firedException">Erros Disparados</g:link></li>
            <li>
                <g:link class="submenu-logado" controller="mailTemplate">Templates Email</g:link>
            </li>
        </ul>
    </li>
    </sec:ifAnyGranted>

    %{--SEGURANÇA--}%
    <sec:ifAnyGranted roles="ROLE_MASTER, ROLE_ADMINISTRADORA, ROLE_SUPORTE, ROLE_ASSISTENTE, ROLE_ESPECTADOR,ROLE_ORCAMENTARIO">
    <li>
        <a href="#" class="menu-logado"><i class="fa fa-shield fa-fw"></i> Segurança<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li>
                <g:link controller="user" class="submenu-logado" action="meuUsuario">Meu Usuário</g:link>
            </li>
            <sec:ifAnyGranted roles="ROLE_MASTER, ROLE_SUPORTE">
                <li>
                    <g:link controller="user" class="submenu-logado" action="index">Cadastro de Usuários</g:link>
                </li>
                <li>
                    <g:link controller="role" class="submenu-logado" action="index">Perfis de Acesso</g:link>
                </li>
            </sec:ifAnyGranted>
        </ul>
        <!-- /.nav-second-level -->
    </li>
    </sec:ifAnyGranted>
</sec:ifNotGranted>

<sec:ifAnyGranted roles="ROLE_VISAO_EDITAIS">
    <li><g:link class="menu-logado" action="dashboard" controller="home"><i class="fa fa-dashboard fa-fw"></i> Início</g:link></li>
    <li><g:link class="menu-logado" controller="projeto" action="index"><i class="fa fa-list fa-fw"></i> Projetos Sociais</g:link></li>
</sec:ifAnyGranted>

<li style="border-bottom: 1px solid #FFFFFF;">
    <a href="${resource(file: 'docs/manualUsuario.pdf')}" class="menu-logado" target="_blank"><i class="fa fa-question-circle fa-fw"></i> Ajuda </a>
</li>