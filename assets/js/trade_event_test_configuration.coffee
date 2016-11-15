---
---

jQuery ->
  $('#content').renderTradeEventJSON
    fieldsBySource: window.rendererTradeEventMapping.fieldsBySource,
    friendlyNames: window.rendererTradeEventMapping.friendlyNames,
    hostUrl: '/json/trade_events/',
    searchUrl: 'https://example.org/search#/search/trade_events'
