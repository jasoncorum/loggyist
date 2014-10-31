// if (!Modernizr.inputtypes.date) {
//     $('input[type=date]').datepicker({
//         // Consistent format with the HTML5 picker
//         dateFormat: 'yy-mm-dd'
//     });
// };

  $(function() {
    $( "#from_" ).datepicker({
      defaultDate: 0,
      changeMonth: true,
      numberOfMonths: 1,
      dateFormat: "yy-mm-dd",
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to_" ).datepicker({
      defaultDate: 0,
      changeMonth: true,
      numberOfMonths: 1,
      dateFormat: "yy-mm-dd",
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });

  // $('#q_').datepicker({
  //     defaultDate: "0",
  //     dateFormat: "yy-mm-dd",
  //     changeMonth: true,
  //     numberOfMonths: 1,
  //     onClose: function( selectedDate ) {
  //       $( '#q2_' ).datepicker( "option", "minDate", selectedDate );
  //     }
  //   });
  //  $("#q2_").datepicker({
  //     defaultDate: "0",
  //     dateFormat: "yy-mm-dd",
  //     changeMonth: true,
  //     numberOfMonths: 1,
  //     onClose: function( selectedDate ) {
  //       $( '#q_' ).datepicker( "option", "maxDate", selectedDate );
  //     }
		// });
  // });