$( document ).ready(function() {

    $("#product_category_id").ready(function() {
        name_category = name_category = $(this).find(':selected').text();

        $.get( "http://127.0.0.1:4000/products/update_form", {category_type: name_category}
        );

    });

    $("#product_category_id").change(function() {
        name_category = name_category = $(this).find(':selected').text();

        $.get( "http://127.0.0.1:4000/products/update_form", {category_type: name_category}
        );

    });


});
