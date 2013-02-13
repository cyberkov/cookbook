jQuery ->
  $('#ingredient_food_name').autocomplete
    source: $('#ingredient_food_name').data('autocomplete-source')
jQuery ->
  $('#ingredient_unit_name').autocomplete
    source: $('#ingredient_unit_name').data('autocomplete-source')
