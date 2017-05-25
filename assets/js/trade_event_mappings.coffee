---
---

$ ->
  return if window.rendererTradeEventMapping?

  window.rendererTradeEventMapping = {}
  window.rendererTradeEventMapping.fieldsBySource = {
    DL: [
      'source',
      'url'
    ],
    ITA: [
      'source',
      'event_type',
      'venues',
      'contacts',
      'url'
    ],
    SBA: [
      'source',
      'event_type',
      'venues',
      'contacts',
      'url'
    ],
    USTDA: [
      'source',
      'venues',
      'contacts',
      'url'
    ]
  }

  window.rendererTradeEventMapping.friendlyNames = {
    contacts: 'Contacts',
    event_type: 'Event Type',
    first_name: 'First Name',
    industries: 'Industries',
    source: 'Source',
    venues: 'Venues'}
