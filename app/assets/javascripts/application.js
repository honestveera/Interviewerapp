// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require dataTables/extras/dataTables.tableTools
//= require moment
//= require bootstrap-datetimepicker
//= require angular
//= require angular-animate
//= require angular-resource
//= require_tree .
$(document).ready(function(){
  $('input[type="submit"]').click(function(){
     if($('input[type="text"]').val()=="")
     {
       $('input[type="text"]').css({"border-color":"red","border-width":"2px"});
     }
    if($('input[type="number"]').val()=="")
     {
       $('input[type="number"]').css({"border-color":"red","border-width":"2px"});
     }
     if($('select').val()=="")
     {
       $('select').css({"border-color":"red","border-width":"2px"});
     }
     else
     {
       $('input[type="text"]').css({"border-color":"skyblue"});
       $('input[type="number"]').css({"border-color":"skyblue"});
       $('select').css({"border-color":"skyblue"});
     }
  });

  $('input[type="text"]').change(function(){
       $(this).css({"border-color":"skyblue"});
  });
  $('input[type="number"]').change(function(){
       $(this).css({"border-color":"skyblue"});
  });
  $('select').change(function(){
       $(this).css({"border-color":"skyblue"});
  });



  // $('input[type="number"]').focusout(function(){
  //    if($(this).val()=="")
  //    {
  //      $(this).css({"border-color":"red","border-width":"2px"});
  //    }
  //    else
  //    {
  //      $(this).css({"border-color":"skyblue"});
  //    }
  // });
  // $('input[type="text"]').focusout(function(){
  //    if($(this).val()=="")
  //    {
  //      $(this).css({"border-color":"red","border-width":"2px"});
  //    }
  //    else
  //    {
  //      $(this).css({"border-color":"skyblue"});
  //    }
  // });
  // $('select').focusout(function(){
  //    if($(this).val()=="")
  //    {
  //      $(this).css({"border-color":"red","border-width":"2px"});
  //    }
  //    else
  //    {
  //      $(this).css({"border-color":"skyblue"});
  //    }
  // });
});
