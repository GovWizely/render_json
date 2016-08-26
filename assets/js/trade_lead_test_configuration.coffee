---
---

jQuery ->
  $('#content').renderJSON
    fieldsBySource: window.rendererTradeLeadMapping.fieldsBySource,
    friendlyNames: window.rendererTradeLeadMapping.friendlyNames,
    hostUrl: '/json/trade_leads/',
    searchUrl: 'https://example.org/search#/search/trade_leads'
