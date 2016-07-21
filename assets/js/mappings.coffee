---
---

$ ->
  return if window.rendererTradeLeadMapping?

  window.rendererTradeLeadMapping = {}
  window.rendererTradeLeadMapping.fieldsBySource = {
    AUSTRALIA: [
      'agency',
      'contract_value',
      'description',
      'parent_id',
      'procurement_method',
      'publish_date_amended',
      'status',
      'ita_industries',
      'project_number',
      'publish_date',
      'start_date',
      'end_date',
      'url',
      'country_name',
      'trade_regions',
      'world_regions'],
    CANADA: [
      'title',
      'description',
      'urls',
      'status',
      'reference_number',
      'contract_number',
      'publish_date',
      'end_date',
      'publish_date_amended',
      'ita_industries',
      'specific_location',
      'notice_type',
      'trade_agreement',
      'bid_type',
      'competitive_procurement_strategy',
      'non_competitive_procurement_strategy',
      'procurement_organization',
      'implementing_entity',
      'contact',
      'country_name',
      'trade_regions',
      'world_regions'],
    FBO: [
      'title',
      'description',
      'url',
      'notice_type',
      'publish_date',
      'procurement_organization',
      'procurement_office',
      'procurement_organization_address',
      'classification_code',
      'ita_industries',
      'procurement_office_address',
      'contract_number',
      'end_date',
      'contact',
      'competitive_procurement_strategy',
      'specific_address',
      'country_name',
      'trade_regions',
      'world_regions'
    ],
    MCA: [
      'title',
      'description',
      'url',
      'publish_date',
      'categories',
      'funding_source',
      'country_name',
      'trade_regions',
      'world_regions'
    ]
    STATE: [
      "title",
      "description",
      "url",
      "status",
      "lead_source",
      "specific_location",
      "project_number",
      "ita_industries",
      "project_size",
      "tags",
      "publish_date",
      "end_date",
      "funding_source",
      "borrowing_entity",
      "procurement_organization",
      "contact",
      "comments",
      "submitting_officer",
      "submitting_officer_contact",
      "country_name",
      'trade_regions',
      'world_regions'
    ],
    UK: [
      'title',
      'description',
      'url',
      'status',
      'reference_number',
      'publish_date',
      'min_contract_value',
      'max_contract_value',
      'procurement_organization',
      'contact',
      'notice_type',
      'ita_industries',
      'specific_location',
      'country_name',
      'trade_regions',
      'world_regions'
    ],
    USTDA: [
      'title',
      'description',
      'url',
      'publish_date',
      'end_date',
      'country_name',
      'trade_regions',
      'world_regions'
    ]
  }

  window.rendererTradeLeadMapping.friendlyNames = {
    agency: 'Agency',
    bid_type: 'Bid type',
    borrowing_entity: 'Borrowing entity',
    categories: 'Categories',
    classification_code: 'Classification code',
    comments: 'Comments',
    competitive_procurement_strategy: 'Competitive procurement strategy',
    contact: 'Contact',
    contract_number: 'Contract number',
    contract_value: 'Contract value',
    country_name: 'Country',
    description: 'Description',
    end_date: 'End date',
    funding_source: 'Funding source',
    implementing_entity: 'Implementing entity',
    ita_industries: 'Industries',
    lead_source: 'Lead source',
    max_contract_value: 'Max contract value',
    min_contract_value: 'Min contract value',
    non_competitive_procurement_strategy: 'Non competitive procurement strategy',
    notice_type: 'Notice type',
    parent_id: 'Parent',
    procurement_method: 'Procurement method',
    procurement_office: 'Procurement office',
    procurement_office_address: 'Procurement office address',
    procurement_organization: 'Procurement organization',
    procurement_organization_address: 'Procurement organization address',
    project_number: 'Project number',
    project_size: 'Project size',
    publish_date: 'Publish date',
    publish_date_amended: 'Publish date amended',
    reference_number: 'Reference number',
    specific_address: 'Specific address',
    specific_location: 'Specific location',
    start_date: 'Start date',
    status: 'Status',
    submitting_officer: 'Submitting officer',
    submitting_officer_contact: 'Submitting officer contact',
    tags: 'Tags',
    title: 'Title',
    trade_agreement: 'Trade agreement',
    trade_regions: 'Trade regions',
    url: 'URL',
    urls: 'URLs',
    world_regions: 'World regions'
  }
