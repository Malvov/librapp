# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).on 'turbolinks:load', ->
  $('#term').select2
    ajax: {
      url: "/books"
      data: (params) ->
        {
          term: params.term
        }
      dataType: 'json'
      delay: 500
      processResults: (data, params) ->
        {
          results: _.map(data, (el) ->
            {
              id: el.id
              title: el.title
            }
          )
        }
      cache: true
    }
    escapeMarkup: (markup) -> markup
    minimumInputLength: 2
    templateResult: (item) -> item.title
    templateSelection: (item) -> item.title