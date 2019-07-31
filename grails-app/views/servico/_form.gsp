<%@ page import="celebrarmais.Servico" %>



<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="servico.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${servicoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'tipoEvento', 'error')} required">
	<label for="tipoEvento">
		<g:message code="servico.tipoEvento.label" default="Tipo Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoEvento" name="tipoEvento.id" from="${celebrarmais.types.TipoEvento.list()}" optionKey="id" required="" value="${servicoInstance?.tipoEvento?.id}" class="many-to-one"/>

</div>

