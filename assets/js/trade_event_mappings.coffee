---
---

$ ->
  return if window.rendererTradeEventMapping?

  window.rendererTradeEventMapping = {}
  window.rendererTradeEventMapping.fieldsBySource = {
    ITA: [
      'city',
      'click_url',
      'contacts',
      'cost',
      'country',
      'country_name',
      'description',
      'email',
      'end_date',
      'event_id',
      'event_name',
      'event_type',
      'first_name',
      'industry',
      'last_name',
      'location',
      'person_title',
      'phone',
      'post',
      'registration_link',
      'registration_title',
      'source',
      'source_industry',
      'start_date',
      'state',
      'url',
      'venues'
    ],
    SBA: [
      'city',
      'click_url',
      'contacts',
      'cost',
      'country',
      'country_name',
      'description',
      'email',
      'end_date',
      'end_time',
      'event_id',
      'event_name',
      'event_type',
      'last_name',
      'name',
      'phone',
      'post',
      'postal_code',
      'registration_link',
      'source',
      'start_date',
      'start_time',
      'state',
      'street',
      'time_zone',
      'venues'
    ]
  }

  window.rendererTradeEventMapping.friendlyNames = {
    city: 'City',
    click_url: 'Click URL',
    contacts: 'Contacts',
    cost: 'Cost',
    country: 'Country',
    country_name: 'Country Name',
    description: 'Description',
    email: 'Email',
    end_date: 'End Date',
    end_time: 'End Time',
    event_id: 'Event ID',
    event_name: 'Event Name',
    event_type: 'Event Type',
    first_name: 'First Name',
    industry: 'Industry',
    last_name: 'Last Name',
    location: 'Location',
    name: 'Name',
    person_title: 'Person Title',
    phone: 'Phone',
    post: 'Post',
    postal_code: 'Postal Code',
    registration_link: 'Registration Link',
    registration_title: 'Registration Title',
    source: 'Source',
    source_industry: 'Source Industry',
    start_date: 'Start Date',
    start_time: 'Start Time',
    state: 'State',
    street: 'Street',
    time_zone: 'Time Zone',
    venues: 'Venues'
    url: 'URL'}
