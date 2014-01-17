$(document).ready ->
  $(".modal").on("ajax:success", "#new_contact", (e, data, status, xhr) ->
    $(".modal").html xhr.responseText
  ).on "ajax:error", "#new_contact", (e, xhr, status, error) ->
    alert "Unexpected error occured."