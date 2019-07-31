
<%@ page import="celebrarmais.Pacote" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pacote.label', default: 'Pacote')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pacote" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pacote" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'pacote.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'pacote.valor.label', default: 'Valor')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pacoteInstanceList}" status="i" var="pacoteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pacoteInstance.id}">${fieldValue(bean: pacoteInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: pacoteInstance, field: "valor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pacoteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
