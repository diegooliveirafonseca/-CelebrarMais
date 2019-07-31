
<%@ page import="celebrarmais.Orcamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orcamento.label', default: 'Orcamento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-orcamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-orcamento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list orcamento">
			
				<g:if test="${orcamentoInstance?.dataEvento}">
				<li class="fieldcontain">
					<span id="dataEvento-label" class="property-label"><g:message code="orcamento.dataEvento.label" default="Data Evento" /></span>
					
						<span class="property-value" aria-labelledby="dataEvento-label"><g:formatDate date="${orcamentoInstance?.dataEvento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orcamentoInstance?.pacote}">
				<li class="fieldcontain">
					<span id="pacote-label" class="property-label"><g:message code="orcamento.pacote.label" default="Pacote" /></span>
					
						<span class="property-value" aria-labelledby="pacote-label"><g:link controller="pacote" action="show" id="${orcamentoInstance?.pacote?.id}">${orcamentoInstance?.pacote?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orcamentoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="orcamento.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${orcamentoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:orcamentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${orcamentoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
