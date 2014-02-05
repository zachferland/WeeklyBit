$(document).ready ->

  $(".down-arrow").click (event) ->
    event.preventDefault()
    n = $(document).height()
    $("html, body").animate
      scrollTop: 700
    , "0.1"