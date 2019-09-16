<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="estilo-publico.css"/>
    <asset:stylesheet src="carousel.css"/>
    <asset:javascript src="application.js"/>
    <link href="${resource(dir: 'css/fonts', file: 'fonts.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet">
    <title><g:layoutTitle default="ANP"/></title>
    <g:layoutHead/>
</head>

<body>
    <div id="wrapper">
        <div id="page-body">
            <g:layoutBody/>
        </div>

        <div class="hidden-xs">
            <g:render template="/layouts/footer"/>
        </div>

        <div class="visible-xs">
            <div>
                <p style="text-align: center;"><b>Celebrar Mais</b>® Copyright. Todos os direitos reservados.</p>
            </div>
        </div>
    </div>
</body>
</html>