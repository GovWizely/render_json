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
      'event_type',
      'cost',
      'start_date',
      'end_date',
      'registration_url'
      'venues',
      'source',
      'contacts',
      'industries',
      'url'
    ],
    SBA: [
      'event_type',
      'cost',
      'start_date',
      'start_time',
      'end_date',
      'end_time',
      'registration_url',
      'venues'
      'source',
      'contacts',
      'industries'
    ],
    USTDA: [
      'cost',
      'start_date',
      'start_time',
      'end_date',
      'end_time',
      'venues',
      'source',
      'contacts',
      'industries',
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
