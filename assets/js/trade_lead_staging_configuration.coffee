---
---

jQuery ->
  $('#content').renderJSON
    fieldsBySource: window.rendererTradeLeadMapping.fieldsBySource,
    friendlyNames: window.rendererTradeLeadMapping.friendlyNames,
    hostUrl: 'https://intrasearch.govwizely.com/v1/trade_leads/',
    searchUrl: 'https://www.export.gov/search#/search/trade_leads'
