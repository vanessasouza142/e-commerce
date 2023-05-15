import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import "./jquery";
import 'bootstrap/dist/js/bootstrap';
import $ from 'jquery';

$(document).ready(function() {
  $("#sidebarToggle, #sidebarToggleTop").on("click", function(e) {
    $("body").toggleClass("sidebar-toggled");
    $(".sidebar").toggleClass("toggled");
    if ($(".sidebar").hasClass("toggled")) {
      $(".sidebar .collapse").collapse("hide");
    }
  });
});

Rails.start();
Turbolinks.start();
ActiveStorage.start();
