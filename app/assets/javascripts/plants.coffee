# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->

  $('#plant_family_name').change ->
    theid = $('#fam_id').val()
    newName = $('#plant_family_name').val()
    if (theid < 1 && confirm "Add " + newName + " to Families?")      
      $.ajax
        url: '/families'
        type: 'POST'
        data :
          name: newName
        success: (data,status,response) ->
          $('#fam_id').val(data.id)
          # alert(data.id)
        error: ->
          alert("Failed")
        dataType: "json"