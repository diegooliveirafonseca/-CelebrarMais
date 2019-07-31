<%@ page import="celebrarmais.types.TipoEvento" %>



<div class="fieldcontain ${hasErrors(bean: tipoEventoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="tipoEvento.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${tipoEventoInstance?.nome}"/>

</div>

