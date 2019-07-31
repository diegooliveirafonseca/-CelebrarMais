<%@ page import="celebrarmais.Pacote" %>



<div class="fieldcontain ${hasErrors(bean: pacoteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pacote.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${pacoteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacoteInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="pacote.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: pacoteInstance, field: 'valor')}" required=""/>

</div>

