---
---

getIdString = ->
  param_strings = window.location.search.substr(1).split('&')
  for param_string in param_strings
    key_value = param_string.split '='
    if key_value[0] == 'id'
      return key_value[1]

renderLink = (url) ->
  $("<a href='#{url}'></a>").append(url)

renderValue = (field, value) ->
  return unless value?
  if /^url/.test(field) then renderLink(value) else $('<span></span>').append(value)

renderArray = (field, array) ->
  return if array.length <= 0
  $ul = $('<ul></ul>')
  $ul.append($('<li></li>').append(renderValue(field, item)) for item in array)
  $ul

renderField = ($content, field, value) ->
  if value instanceof Array
    value = renderArray field, value
  else
    value = renderValue field, value

  return unless value?
  $wrapper = $("<p id='field_#{field}'></p>")
  friendlyName = window.rendererTradeLeadMapping.friendlyNames[field]
  $wrapper.append "<div>#{friendlyName}</div>"
  $wrapper.append value
  $content.append $wrapper

renderJSONResponse = (data) ->
  source = data.source
  $content = $(window.rendererConfig.contentSelector)
  fields = window.rendererTradeLeadMapping.fieldsBySource[source]
  return unless fields?
  renderField $content, field, data[field] for field in fields

renderNotFound = ->
  $(window.rendererConfig.contentSelector).append '<p>Not Found</p>'

requestJSON = (id) ->
  url = "#{window.rendererConfig.hostUrl}#{encodeURIComponent(id)}?api_key=#{encodeURIComponent(window.rendererConfig.apiKey)}"
  $.ajax
    contentType: 'text/plain',
    type: 'GET',
    url: url,
    xhrFields: {
      withCredentials: false
    },
    success: renderJSONResponse,
    error: renderNotFound


ready = ->
  idString = getIdString()
  if idString? then requestJSON(idString) else renderNotFound()

$ -> ready()

