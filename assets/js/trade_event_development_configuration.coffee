---
---

jQuery ->
  $('#content').renderJSON
    fieldsBySource: window.rendererTradeEventMapping.fieldsBySource,
    friendlyNames: window.rendererTradeEventMapping.friendlyNames,
    hostUrl: 'https://intrasearch.export.gov/v1/trade_event/',
    searchUrl: 'https://www.export.gov/search#/search/trade_events'
