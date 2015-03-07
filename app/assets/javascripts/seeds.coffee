# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->

  $('#seed_plant_name').change ->
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

  $('#seed_vendor_name').change ->
    theid = $('#vendor_id').val()
    if (theid < 1)
      newName = $('#seed_vendor_name').val()
      $.ajax
        url: '/vendors'
        type: 'POST'
        data :
          name: newName
        success: (data,status,response) ->
          $('#vendor_id').val(data.id)
          alert(data.id)
        error: ->
          alert("Failed")
        dataType: "json"

  $('#seed_location_name').change ->
    theid = $('#location_id').val()
    if (theid < 1)
      newName = $('#seed_location_name').val()
      $.ajax
        url: '/locations'
        type: 'POST'
        data :
          name: newName
        success: (data,status,response) ->
          $('#location_id').val(data.id)
          alert(data.id)
        error: ->
          alert("Failed")
        dataType: "json"
