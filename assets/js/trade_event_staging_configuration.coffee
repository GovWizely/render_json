---
---

jQuery ->
  $('#content').renderTradeEventJSON
    fieldsBySource: window.rendererTradeEventMapping.fieldsBySource,
    friendlyNames: window.rendererTradeEventMapping.friendlyNames,
    hostUrl: 'https://intrasearch.govwizely.com/v2/trade_events/',
    searchUrl: 'http://govwizely.github.io/market-intelligence-search-app/market_intelligence/staging/#/search/trade_events'
