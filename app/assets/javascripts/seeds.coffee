# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->

  $('#seed_plant_name').focusout ->
    theid = $('#plant_id').val()
    if (theid < 1)
      newName = $('#seed_plant_name').val()
      $.ajax
        url: '/plants'
        type: 'POST'
        data :
          name: newName
        success: (data,status,response) ->
          $('#plant_id').val(data.id)
          alert(data.id)
        error: ->
          alert("Failed")
        dataType: "json"