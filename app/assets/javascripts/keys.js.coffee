# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready", ->

  # SELECTS
  $('#q_facility_eq, #q_company_eq, #q_checkout_gteq, #q_checkin_lteq').change ->
    $('#fKey_filter').submit()

  $(document).bind "ajaxSuccess", "form.for_select_form", (event, xhr, settings) ->
    $for_select_form = $(event.data)
    $error_container = $("#error_explanation", $for_select_form)
    $error_container_ul = $("ul", $error_container)
    $("<p>").html(xhr.responseJSON.company + " saved.").appendTo $for_select_form
    if $("li", $error_container_ul).length
      $("li", $error_container_ul).remove()
      $error_container.hide()

  $(document).bind "ajaxError", "form.for_select_form", (event, jqxhr, settings, exception) ->
    $for_select_form = $(event.data)
    $error_container = $("#error_explanation", $for_select_form)
    $error_container_ul = $("ul", $error_container)
    $error_container.show()  if $error_container.is(":hidden")
    $.each jqxhr.responseJSON, (index, message) ->
      $("<li>").html(message).appendTo $error_container_ul

