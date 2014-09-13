$(document).ready(function(){
    $("#activity_activity_type").change(function(){
        if($("#activity_activity_type").val() == "Phone Call"){
          $(".hidden_option").fadeIn('fast');
        }        
    });        
});

$(document).ready(function(){
    $("#activity_activity_type").change(function(){
        if($("#activity_activity_type").val() != "Phone Call"){
          $(".hidden_option").fadeOut('fast');
        }        
    });        
});