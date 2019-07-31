<%@ page import="celebrarmais.Orcamento" %>



<div class="fieldcontain ${hasErrors(bean: orcamentoInstance, field: 'dataEvento', 'error')} required">
	<label for="dataEvento">
		<g:message code="orcamento.dataEvento.label" default="Data Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataEvento" precision="day"  value="${orcamentoInstance?.dataEvento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: orcamentoInstance, field: 'pacote', 'error')} required">
	<label for="pacote">
		<g:message code="orcamento.pacote.label" default="Pacote" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pacote" name="pacote.id" from="${celebrarmais.Pacote.list()}" optionKey="id" required="" value="${orcamentoInstance?.pacote?.nome}" class="many-to-one"/>

</div>

