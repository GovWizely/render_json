---
---

jQuery ->
  $('#content').renderTradeEventJSON
    fieldsBySource: window.rendererTradeEventMapping.fieldsBySource,
    friendlyNames: window.rendererTradeEventMapping.friendlyNames,
    hostUrl: 'https://intrasearch.govwizely.com/v2/trade_events/',
    searchUrl: 'https://sod-trade.cs32.force.com/search#/search/trade_events'
