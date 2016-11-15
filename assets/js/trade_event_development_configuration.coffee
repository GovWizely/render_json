---
---

jQuery ->
  $('#content').renderTradeEventJSON
    fieldsBySource: window.rendererTradeEventMapping.fieldsBySource,
    friendlyNames: window.rendererTradeEventMapping.friendlyNames,
    hostUrl: 'https://intrasearch.export.gov/v2/trade_events/',
    searchUrl: 'https://www.export.gov/search#/search/trade_events'
