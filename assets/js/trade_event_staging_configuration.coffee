---
---

jQuery ->
  $('#content').renderJSON
    fieldsBySource: window.rendererTradeEventMapping.fieldsBySource,
    friendlyNames: window.rendererTradeEventMapping.friendlyNames,
    hostUrl: 'https://intrasearch.govwizely.com/v2/trade_events/',
    searchUrl: 'https://www.export.gov/search#/search/trade_events'
