RSpec.describe 'trade lead', type: :feature, js: true do
  context 'when viewing Australia trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=australia.json'
      expect(find_by_id('field_title').find('h1').text).to eq('Research into local content use and understanding')
      expect(find_by_id('field_description').text).to eq('The ACMA is seeking a supplier to conduct research into local content arrangements including a regional focus.')
      expect(find_by_id('field_url')).to have_link('https://www.tenders.gov.au/?event=public.atm.show&ATMUUID=3CFB46F2-9693-0C82-DAFB7F2E007DEC4B', href: 'https://goo.gl/vrJFbj')
      expect(find_by_id('field_atm_id').text).to eq('ATM ID 16ACMA057')
      expect(find_by_id('field_published_at').text).to eq('Publish date Tue Jun 21 2016')
      expect(find_by_id('field_end_at').text).to eq('End date Mon Jul 18 2016')
      # binding.pry
      expect(find_link('Australia')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Australia')
    end
  end

  context 'when viewing Canada trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=canada.json'
      expect(find_by_id('field_title').find('h1').text).to eq('T56/F404 Propulsion Group Sustainment (W8485-13DL02/B)')
      expect(find_by_id('field_description').text).to eq('Procurement Strategy: N/A - P&A/LOI Only Comprehensive Land Claim')
      expect(find_by_id('field_urls')).to have_link('https://buyandsell.gc.ca/cds/public/2015/07/08/65ade50e10295606c7749c3dca73ebf6/ABES.PROD.PW__BB.B237.F25243.EBSU000.PDF', href: 'https://goo.gl/ARBFAz')
      expect(find_by_id('field_country').text).to eq('Country Canada')
      expect(find_by_id('field_published_at').text).to eq('Publish date Thu Jul 09 2015')
      expect(find_by_id('field_amended_at').text).to eq('Amendment date Mon Mar 14 2016')
      expect(find_by_id('field_end_at').text).to eq('End date Fri Jul 29 2016')
      expect(find_link('Aircraft and Aircraft Parts')[:href]).to eq('https://example.org/search#/search/trade_leads?industries=Aircraft+and+Aircraft+Parts')
      expect(find_link('Canada')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Canada')
    end
  end

  context 'when viewing FBO trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=fbo.json'
      expect(find_by_id('field_title').find('h1').text).to eq('Basic Ordering Agreement (BOA) for Fuel in Iraq, Jordan, and Turkey')
      expect(find_by_id('field_description').text).to eq('DLA Energy - Direct Delivery Fuels (FEPDA) intends to establish Basic Ordering Agreements (BOAs)')
      expect(find_by_id('field_url')).to have_link('https://www.fbo.gov/spg/DLA/J3/DESC/SP0600-15-R-0210/listing.html', href: 'https://goo.gl/pQz1PY')
      expect(find_by_id('field_published_at').text).to eq('Publish date Tue Mar 17 2015')
      expect(find_by_id('field_end_at').text).to eq('End date Tue Mar 31 2020')
      expect(find_link('Petroleum Refineries')[:href]).to eq('https://example.org/search#/search/trade_leads?industries=Petroleum+Refineries')
      expect(find_link('Iraq')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Iraq')
    end
  end

  context 'when viewing MCA trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=mca.json'
      expect(find_by_id('field_title').find('h1').text).to eq('Job Vacancies')
      expect(find_by_id('field_description').text).to eq('Buyer: MILLENNIUM CHALLENGE ACCOUNT (MCA)')
      expect(find_by_id('field_url')).to have_link('http://www.dgmarket.com/tenders/np-notice.do?noticeId=14218352', href: 'http://goo.gl/98Shvh')
      expect(find_by_id('field_published_at').text).to eq('Publish date Mon Jul 18 2016')
      expect(find_link('Liberia')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Liberia')
    end
  end

  context 'when viewing STATE trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=state.json'
      expect(find_by_id('field_title').find('h1').text).to eq('EOI Sri Lankan Airlines and Mihin Lanka')
      expect(find_by_id('field_description').text).to eq('Expression of Interest')
      expect(find_by_id('field_url')).to have_link('http://www.nsb.lk', href: 'http://goo.gl/9YTq4z')
      expect(find_by_id('field_published_at').text).to eq('Publish date Wed Jul 06 2016')
      expect(find_by_id('field_end_at').text).to eq('End date Wed Aug 24 2016')
      expect(find_link('Transport and Logistics')[:href]).to eq('https://example.org/search#/search/trade_leads?industries=Transport+and+Logistics')
      expect(find_link('Sri Lanka')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Sri+Lanka')
    end
  end

  context 'when viewing UK trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=uk.json'
      expect(find_by_id('field_title').find('h1').text).to eq('Great Missenden CofE School 1FE Expansion - Commerical Team EOI')
      expect(find_by_id('field_description').text).to eq('Applications to be considered for inclusion on the tender list are invited')
      expect(find_by_id('field_url')).to have_link('http://www.buckscc.gov.uk', href: 'http://goo.gl/cw3ZP')
      expect(find_by_id('field_published_at').text).to eq('Publish date Tue Jul 12 2016')
      expect(find_by_id('field_deadline_at').text).to eq('Deadline date Tue Jul 26 2016')
      expect(find_by_id('field_contract_start_at').text).to eq('Contract start date Mon Oct 10 2016')
      expect(find_by_id('field_contract_end_at').text).to eq('Contract end date Thu Aug 10 2017')
      expect(find_link('Real Estate Services')[:href]).to eq('https://example.org/search#/search/trade_leads?industries=Real+Estate+Services')
      expect(find_link('United Kingdom')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=United+Kingdom')
    end
  end

  context 'when viewing USTDA trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=ustda.json'
      expect(find_by_id('field_title').find('h1').text).to eq('Mexico: International Competitive Tender: Shared Network (Red Compartida) for Telecommunications Services')
      expect(find_by_id('field_description').text).to eq('Background: The Government of Mexico')
      expect(find_by_id('field_url')).to have_link('https://www.ustda.gov/business-opportunities/trade-leads/mexico-international-competitive-tender-shared-network-red', href: 'https://www.ustda.gov/business-opportunities/trade-leads/mexico-international-competitive-tender-shared-network-red')
      expect(find_by_id('field_published_at').text).to eq('Publish date Fri Jan 29 2016')
      expect(find_by_id('field_end_at').text).to eq('End date Mon Aug 08 2016')
      expect(find_link('Mexico')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Mexico')
    end
  end
  
  context 'when JSON data is not present' do
    it 'renders not found' do
      visit '/test_trade_lead.html?id=foo.json'
      expect(find_by_id('content').text).to eq('Not Found')
    end
  end
end
