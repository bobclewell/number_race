# FIXME: This script should only run on the Races Show page.

jQuery ->
  setTimeout(updateRace, 3000)

updateRace = ->
  race_id = $('#race-container').attr('data-race-id')
  $.getScript('/numbers/show.js?race_id=' + race_id)
  setTimeout(updateRace, 3000)