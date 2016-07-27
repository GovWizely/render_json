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

renderTag = (key, value) ->
  params = {}
  params[key] = value
  $params = $.param params

  $link = $('<a />',
    href: "#{window.rendererConfig.searchUrl}?#{$params}",
    text: value)
  $('<li />').append $link

renderTags = (data) ->
  $listItems = []
  industries = data['industry']
  $listItems.push renderTag('industries', industry) for industry in industries if industries?

  $listItems.push renderTag('countries', data['country_name'])

  world_regions = data['world_region']
  $listItems.push renderTag('world_regions', region) for region in world_regions if world_regions?

  trade_regions = data['trade_region']
  $listItems.push renderTag('trade_regions', region) for region in trade_regions if trade_regions?

  if $listItems.length > 0
    $tags = $('<ul />',
      id: 'tags')
    $tags.append $listItems
    $tags

renderJSONResponse = (data) ->
  source = data.source
  $content = $(window.rendererConfig.contentSelector)
  fields = window.rendererTradeLeadMapping.fieldsBySource[source]
  return unless fields?
  renderField $content, field, data[field] for field in fields
  $tags = renderTags data
  $content.append $tags if $tags?

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

