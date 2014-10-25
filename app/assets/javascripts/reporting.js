// if (!Modernizr.inputtypes.date) {
//     $('input[type=date]').datepicker({
//         // Consistent format with the HTML5 picker
//         dateFormat: 'yy-mm-dd'
//     });
// };
$(function (){
  $('#q_').datepicker({
      defaultDate: "0",
      dateFormat: "yy-mm-dd",
      changeMonth: true,
      numberOfMonths: 1,
      onClose: function( selectedDate ) {
        $( "#q2_" ).datepicker( "option", "minDate", selectedDate );
      }
    });
      $( "#q2_" ).datepicker({
      defaultDate: "0",
      dateFormat: "yy-mm-dd",
      changeMonth: true,
      numberOfMonths: 1,
      onClose: function( selectedDate ) {
        $( "#q_" ).datepicker( "option", "maxDate", selectedDate );
      }
		});
  });