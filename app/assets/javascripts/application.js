// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

// This will submit the form contained in modal whenever
// a button with id modal-form-submit is clicked in a modal
$(document).on("click", "#modal-form-submit", function(){
  var form = $(this).
             closest(".modal-dialog"). // similar to parents i.e. find first parent which has class .modal-dialog
             find("form"); // find the form
  form.submit();
});