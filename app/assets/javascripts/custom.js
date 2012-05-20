$(document).ready( function() {

	$("#user_dev").change(function() {
		 $("#label_dev").toggleClass("button_selected", this.checked)
	}).change();
	
	$("#user_design").change(function() {
		 $("#label_design").toggleClass("button_selected", this.checked)
	}).change();
	
	$("#user_html_css").change(function() {
		 $("#label_html_css").toggleClass("button_selected", this.checked)
	}).change();
	
});