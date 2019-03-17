// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//

//= require jquery
//= require jquery_ujs
//= require plugins/jquery/jquery-migrate-1.2.1.min
//= require jquery-ui
//= require bootstrap-sprockets
//= require plugins/selectbox/jquery.selectbox-0.1.3.min
//= require plugins/countdown/jquery.syotimer
//= require plugins/datepicker/bootstrap-datepicker.js
//= require plugins/jquery/waypoints.min
//= require plugins/counter-up/jquery.counterup.min
//= require plugins/isotope/isotope.min
//= require plugins/isotope/jquery.fancybox.pack
//= require plugins/isotope/isotope-triger
//= require plugins/slick/slick
//= require star-custom
//= require jquery.validate
//= require jquery.validate.localization/messages_zh
//= require sweetalert2


$(document).ready(()=>{
  $('.form_datepicker').datepicker({
    format: 'yyyy年mm月dd日',
    autoclose: true,
    orientation: 'top auto',
    todayBtn: 'linked',
    todayHighlight: true
  });
});
