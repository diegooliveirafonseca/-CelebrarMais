
<%@ page import="celebrarmais.Orcamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orcamento.label', default: 'Orcamento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-orcamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-orcamento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataEvento" title="${message(code: 'orcamento.dataEvento.label', default: 'Data Evento')}" />
					
						<th><g:message code="orcamento.pacote.label" default="Pacote" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'orcamento.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orcamentoInstanceList}" status="i" var="orcamentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orcamentoInstance.id}">${fieldValue(bean: orcamentoInstance, field: "dataEvento")}</g:link></td>
					
						<td>${fieldValue(bean: orcamentoInstance, field: "pacote")}</td>
					
						<td><g:formatDate date="${orcamentoInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orcamentoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
