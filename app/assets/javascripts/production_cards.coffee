# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->

  $('#production_card_table').DataTable -> {
    paging: true }

  $('#plnt_name').change ->
    alert 'choose this plant?'  

#  $(document).bind "ajaxSuccess", "form.new_production_step", (event, xhr, settings) ->
#    window.location.reload(false)