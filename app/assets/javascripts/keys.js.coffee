# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready", ->

  # SELECTS
  $('#q_facility_eq, #q_company_eq, #q_checkout_gteq, #q_checkin_lteq').change ->
    $('#fKey_filter').submit()
