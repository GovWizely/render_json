---
---

template = """
{% include_relative templates/trade_events/main.html %}
"""

contactTemplate = """
{% include_relative templates/trade_events/contact.html %}
"""

linkTemplate = """
{% include_relative templates/link.html %}
"""

listTemplate = """
{% include_relative templates/list.html %}
"""

valueTemplate = """
{% include_relative templates/value.html %}
"""

venueTemplate = """
{% include_relative templates/trade_events/venue.html %}
"""

$ = jQuery

getIdString = ->
  param_strings = window.location.search.substr(1).split('&')
  for param_string in param_strings
    key_value = param_string.split '='
    if key_value[0] == 'id'
      return key_value[1]

escapeValue = (value) ->
  Mustache.render valueTemplate,
    value: value

renderLink = (text, clickUrl) ->
  clickUrl ||= text
  Mustache.render linkTemplate,
    href: clickUrl,
    text: text

renderArray = (items) ->
  Mustache.render listTemplate, items: items

renderContacts = (contacts) ->
  values = []
  for contact in contacts
    html = Mustache.render contactTemplate, contact
    values.push html
  renderArray values

renderCost = (costCurrency, cost) ->
  return unless cost?

  if costCurrency? && costCurrency != 'USD'
    costPrefix = ''
  else
    costPrefix = '$'
    costCurrency = ''
  escapeValue "#{costPrefix}#{cost}#{costCurrency}"

renderDate = (dateString) ->
  dateRegex = /^\d{4}-\d{2}-\d{2}/;
  matchingDateString = dateString.match(dateRegex)
  return unless matchingDateString?

  localTime = new Date().toISOString().substr(10)
  localizedDateTime = "#{matchingDateString[0]}#{localTime}"
  new Date(localizedDateTime).toDateString()

renderIndustries = (searchUrl, industries) ->
  return unless industries.length > 0

  links = []
  for industry in industries
    params = { industries: industry }
    searchParams = $.param params
    url = "#{searchUrl}?#{searchParams}"
    links.push renderLink(industry, url)
  renderArray links
  
renderVenues = (venues) ->
  values = []
  for venue in venues
    html = Mustache.render venueTemplate, venue
    values.push html
  renderArray values

renderUrl = (jsonData, field, url) ->
  clickUrlField = field.replace /url$/, 'click_url'
  clickUrl = jsonData[clickUrlField]
  renderLink url, clickUrl

renderValue = (config, jsonData, field, value) ->
  switch field
    when 'contacts'
      renderContacts value
    when 'cost'
      renderCost jsonData.cost_currency, value
    when 'industries'
      renderIndustries config.searchUrl, value
    when 'url', 'registration_url'
      renderUrl jsonData, field, value
    when 'venues'
      renderVenues value
    else
      if /\_date/.test field
        renderDate value
      else
        value

renderField = (config, jsonData, field) ->
  value = jsonData[field]
  renderValue config, jsonData, field, value if value?

buildFieldData = (config, jsonData) ->
  fields = config.fieldsBySource[jsonData.source]
  friendlyNames = config.friendlyNames
  fieldData = []
  for field in fields
    value = renderField config, jsonData, field
    if value?
      friendlyName = friendlyNames[field]
      fieldData.push
        field: field,
        label: friendlyName,
        value: value
  fieldData

renderJSONResponse = (jsonData) ->
  $content = $(this)
  config = $content.data()
  jsonData._fields = buildFieldData config, jsonData
  jsonData._industries = renderField config, jsonData, 'industries'

  html = Mustache.render template,
    jsonData
  $content.append html
  document.title = jsonData.name

renderNotFound = ->
  $(this).append '<p>Page Not Found</p>'
  document.title = 'Page Not Found'

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

$.fn.renderTradeEventJSON = (options) ->
  this.each ->
    idString = getIdString()
    $this = $(this)
    for key in Object.getOwnPropertyNames options
      $this.data key, options[key]
    if idString? then requestJSON(this, idString) else renderNotFound.call(this)
