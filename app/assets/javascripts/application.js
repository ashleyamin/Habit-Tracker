// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $("input").change(function() {
    if($(this).is(":checked")) {
      console.log("Is checked");
      <%= f.check_box :reminder, placeholder: "Reminder?" %>
    }
    else {
      console.log("Is Not checked");
      <%= f.check_box :reminder, placeholder: "Reminder?" %>
    }
  })
});
