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
      'contacts'
    ],
    USTDA: [
      'source',
      'venues',
      'contacts',
      'url',
    ]
  }

  window.rendererTradeEventMapping.friendlyNames = {
    contacts: 'Contacts',
    event_type: 'Event Type',
    first_name: 'First Name',
    industries: 'Industries',
    registration_url: 'Registration URL',
    source: 'Source',
    url: 'URL'
    venues: 'Venues'}
