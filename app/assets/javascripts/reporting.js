if (!Modernizr.inputtypes.date) {
    $('input[type=date]').datepicker({
        // Consistent format with the HTML5 picker
        dateFormat: 'yy-mm-dd'
    });
};