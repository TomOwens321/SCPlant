# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->

  $('#plant_family_name').focusout ->
    theid = $('#fam_id').val()
    if (theid < 1)
      newName = $('#plant_family_name').val()
      $.ajax
        url: '/families'
        type: 'POST'
        data :
          name: newName
        success: (data,status,response) ->
          $('#fam_id').val(data.id)
          alert(data.id)
        error: ->
          alert("Failed")
        dataType: "json"