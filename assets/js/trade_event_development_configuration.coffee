---
---

jQuery ->
  $('#content').tradeeventrenderJSON
    fieldsBySource: window.rendererTradeEventMapping.fieldsBySource,
    friendlyNames: window.rendererTradeEventMapping.friendlyNames,
    hostUrl: 'https://intrasearch.export.gov/v2/trade_event/',
    searchUrl: 'https://www.export.gov/search#/search/trade_events'
