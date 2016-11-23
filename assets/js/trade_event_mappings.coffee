---
---

$ ->
  return if window.rendererTradeEventMapping?

  window.rendererTradeEventMapping = {}
  window.rendererTradeEventMapping.fieldsBySource = {
    DL: [
      'description',
      'source',
      'url'
    ],
    ITA: [
      'start_date',
      'end_date',
      'description',
      'source',
      'event_type',
      'cost',
      'venues',
      'contacts',
      'url'
    ],
    SBA: [
      'start_date',
      'end_date',
      'description',
      'source',
      'event_type',
      'cost',
      'venues',
      'start_time',
      'end_time',
      'contacts'
    ],
    USTDA: [
      'start_date',
      'end_date',
      'description',
      'source',
      'cost',
      'venues',
      'start_time',
      'end_time',
      'contacts',
      'url',
    ]
  }

  window.rendererTradeEventMapping.friendlyNames = {
    contacts: 'Contacts',
    cost: 'Cost',
    cost_currency: 'Cost Currency',
    end_date: 'End Date',
    end_time: 'End Time',
    event_type: 'Event Type',
    first_name: 'First Name',
    industries: 'Industries',
    registration_url: 'Registration URL',
    source: 'Source',
    start_date: 'Start Date',
    start_time: 'Start Time',
    url: 'URL'
    venues: 'Venues'}
