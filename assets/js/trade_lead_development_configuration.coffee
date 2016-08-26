---
---

jQuery ->
  $('#content').renderJSON
    fieldsBySource: window.rendererTradeLeadMapping.fieldsBySource,
    friendlyNames: window.rendererTradeLeadMapping.friendlyNames,
    hostUrl: 'https://intrasearch.export.gov/v1/trade_leads/',
    searchUrl: 'https://www.export.gov/search#/search/trade_leads'
