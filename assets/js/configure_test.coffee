---
---

$ ->
  return if window.rendererConfig?
  window.rendererConfig =
    apiKey: 'devkey',
    contentSelector: '#content',
    hostUrl: '/json/trade_leads/'
