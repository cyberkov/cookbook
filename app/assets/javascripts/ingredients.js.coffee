jQuery ->
  $('#ingredient_food_name').autocomplete
    source: $('#ingredient_food_name').data('autocomplete-source')
