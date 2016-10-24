---
---

$ = jQuery

getIdString = ->
  param_strings = window.location.search.substr(1).split('&')
  for param_string in param_strings
    key_value = param_string.split '='
    if key_value[0] == 'id'
      return key_value[1]

renderDate = (dateString) ->
  dateRegex = /^\d{4}-\d{2}-\d{2}/;
  matchingDateString = dateString.match(dateRegex)
  return unless matchingDateString?

  localTime = new Date().toISOString().substr(10)
  localizedDateTime = "#{matchingDateString[0]}#{localTime}"
  $('<span />',
    text: new Date(localizedDateTime).toDateString())

renderLink = (url, click_url) ->
  click_url = url unless click_url?
  $('<a />',
    href: click_url,
    text: url)

renderLinks = (data, field) ->
  urls = data[field]
  return unless urls?

  urls = [urls] unless urls instanceof Array

  click_urls = data["click_#{field}"]
  click_urls = [click_urls] unless click_urls instanceof Array

  renderLink url, click_urls[i] for url, i in urls

renderValue = (field, value) ->
  return unless value?
  switch field
    when 'title' then $('<h1 />', text: value)
    when 'description' then $('<div />').append(value)
    else
      if /\_at/.test(field)
        renderDate value
      else if /^url/.test(field)
        renderLink value, field, data
      else $('<span />', text: value)

renderArray = (field, array) ->
  return if array.length <= 0
  $ul = $('<ul></ul>')
  $ul.append($('<li></li>').append(renderValue(field, item)) for item in array)
  $ul

renderField = ($content, field, data) ->
  value = data[field]
  if /^url/.test(field)
    renderedValue = renderLinks data, field
  else if value instanceof Array
    renderedValue = renderArray field, value
  else
    renderedValue = renderValue field, value

  return unless renderedValue?
  $wrapper = $('<p />', id: "field_#{field}")
  friendlyName = $content.data('friendlyNames')[field]
  $wrapper.append $('<div />', text: friendlyName) unless field in ['description', 'title']
  $wrapper.append renderedValue
  $content.append $wrapper

renderTag = (searchUrl, key, value) ->
  params = {}
  params[key] = value
  $params = $.param params

  $link = $('<a />',
    href: "#{searchUrl}?#{$params}",
    text: value)
  $('<li />').append $link

renderTags = (searchUrl, data) ->
  $listItems = []

  country = data['country']
  $listItems.push renderTag(searchUrl, 'countries', country) if country?

  industries = data['industries']
  $listItems.push renderTag(searchUrl, 'industries', industry) for industry in industries if industries?

  if $listItems.length > 0
    $tags = $('<ul />',
      id: 'tags')
    $tags.append $listItems
    $tags

renderJSONResponse = (jsonData) ->
  source = jsonData.source
  $content = $(this)
  fields = $content.data('fieldsBySource')[source]
  return unless fields?
  renderField $content, field, jsonData for field in fields
  $tags = renderTags $content.data('searchUrl'), jsonData
  $content.append $tags if $tags?

renderNotFound = ->
  $(this).append '<p>Not Found</p>'

requestJSON = (element, id) ->
  $element = $(element)
  url = "#{$element.data('hostUrl')}#{encodeURIComponent(id)}"
  $.ajax
    contentType: 'text/plain',
    context: element,
    type: 'GET',
    url: url,
    xhrFields: {
      withCredentials: false
    },
    success: renderJSONResponse,
    error: renderNotFound

$.fn.tradeeventrenderJSON = (options) ->
  this.each ->
    idString = getIdString()
    $this = $(this)
    for key in Object.getOwnPropertyNames options
      $this.data key, options[key]
    if idString? then requestJSON(this, idString) else renderNotFound.call(this)
