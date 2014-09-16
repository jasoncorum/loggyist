
// Displays phone number fields when phone call is selected.

$(document).ready(function(){
    $("#activity_activity_type").change(function(){
        if($("#activity_activity_type").val() == "Phone Call"){
          $(".hidden_option").fadeIn('fast');
        }        
    });        
});

// Hides phone number fields when phone call is selected.

$(document).ready(function(){
    $("#activity_activity_type").change(function(){
        if($("#activity_activity_type").val() != "Phone Call"){
          $(".hidden_option").fadeOut('fast');
        }        
    });        
});
