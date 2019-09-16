// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//

//= require plugins/jquery-1.11.3.min.js
//= require plugins/jquery-3.3.1.slim.min.js
//= require plugins/jquery-ui.min.js
//= require_tree plugins
//= require_self
//= require input-list.js
//= require bootstrap-datepicker.js
//= require validator-boostrap.js
//= require propriedadesPrograma.js
//= require input.masks.js
//= require tag-it.js
//= require Chart.bundle.js
//= require bootstrap.bundle.min.js
//= require popper.min.js
//= require bootstrap-select.min.js
//= require jquery.edittable.js
//= require jquery.maskMoney.min.js
//= require sweetalert.min.js
//= require jquery.validate.min.js
//= require jsgrid.core.js
//= require jsgrid.load-indicator.js
//= require jsgrid.load-strategies.js
//= require jsgrid.sort-strategies.js
//= require jsgrid.field.js
//= require jsgrid.field.text.js
//= require jsgrid.field.number.js
//= require jsgrid.field.select.js
//= require jsgrid.field.checkbox.js
//= require jsgrid.field.control.js
//= require jquery.searchabledropdown-1.0.8.min.js
//= require chosen.jquery.min.js
//= require chosen.proto.js
//= require date.js
//= require markerwithlabel.js
//= require ajaxFormSubmition.js
//= require ajaxTableCrud.js
//= require select2.js
//= require jsgrid.field.textarea.js

if (typeof jQuery !== 'undefined') {
	$(document).ready(function(){
		$("select.select").select2();
	});
}
