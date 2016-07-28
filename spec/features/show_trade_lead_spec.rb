RSpec.describe 'trade lead', type: :feature, js: true do
  context 'when viewing Australia trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=australia.json'
      expect(find_by_id('field_title').text).to eq('Title Research into local content use and understanding')
      expect(find_by_id('field_description').text).to eq('Description The ACMA is seeking a supplier to conduct research into local content arrangements including a regional focus.')
      expect(find_by_id('field_url')).to have_link('https://www.tenders.gov.au/?event=public.atm.show&ATMUUID=3CFB46F2-9693-0C82-DAFB7F2E007DEC4B')
      expect(find_by_id('field_atm_id').text).to eq('ATM ID 16ACMA057')
      # binding.pry
      expect(find_link('Australia')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Australia')
      expect(find_link('Oceania')[:href]).to eq('https://example.org/search#/search/trade_leads?world_regions=Oceania')
      expect(find_link('Trans Pacific Partnership')[:href]).to eq('https://example.org/search#/search/trade_leads?trade_regions=Trans+Pacific+Partnership')
    end
  end

  context 'when viewing Canada trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=canada.json'
      expect(find_by_id('field_title').text).to eq('Title T56/F404 Propulsion Group Sustainment (W8485-13DL02/B)')
      expect(find_by_id('field_description').text).to eq('Description Procurement Strategy: N/A - P&A/LOI Only Comprehensive Land Claim')
      expect(find_by_id('field_url')).to have_link('https://buyandsell.gc.ca/cds/public/2015/07/08/65ade50e10295606c7749c3dca73ebf6/ABES.PROD.PW__BB.B237.F25243.EBSU000.PDF')
      expect(find_by_id('field_country_name').text).to eq('Country Canada')
      expect(find_link('Aircraft and Aircraft Parts')[:href]).to eq('https://example.org/search#/search/trade_leads?industries=Aircraft+and+Aircraft+Parts')
      expect(find_link('Canada')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Canada')
      expect(find_link('North America')[:href]).to eq('https://example.org/search#/search/trade_leads?world_regions=North+America')
      expect(find_link('NAFTA')[:href]).to eq('https://example.org/search#/search/trade_leads?trade_regions=NAFTA')
    end
  end

  context 'when viewing FBO trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=fbo.json'
      expect(find_by_id('field_title').text).to eq('Title Basic Ordering Agreement (BOA) for Fuel in Iraq, Jordan, and Turkey')
      expect(find_by_id('field_description').text).to eq('Description DLA Energy - Direct Delivery Fuels (FEPDA) intends to establish Basic Ordering Agreements (BOAs)')
      expect(find_by_id('field_url')).to have_link('https://www.fbo.gov/spg/DLA/J3/DESC/SP0600-15-R-0210/listing.html')
      expect(find_link('Petroleum Refineries')[:href]).to eq('https://example.org/search#/search/trade_leads?industries=Petroleum+Refineries')
      expect(find_link('Iraq')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Iraq')
      expect(find_link('Persian Gulf Region')[:href]).to eq('https://example.org/search#/search/trade_leads?world_regions=Persian+Gulf+Region')
      expect(find_link('Organization of the Petroleum Exporting Countries')[:href]).to eq('https://example.org/search#/search/trade_leads?trade_regions=Organization+of+the+Petroleum+Exporting+Countries')
    end
  end

  context 'when viewing MCA trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=mca.json'
      expect(find_by_id('field_title').text).to eq('Title Job Vacancies')
      expect(find_by_id('field_description').text).to eq('Description Buyer: MILLENNIUM CHALLENGE ACCOUNT (MCA)')
      expect(find_by_id('field_url')).to have_link('http://www.dgmarket.com/tenders/np-notice.do?noticeId=14218352')
      expect(find_link('Liberia')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Liberia')
      expect(find_link('West Africa')[:href]).to eq('https://example.org/search#/search/trade_leads?world_regions=West+Africa')
      expect(find_link('African Growth and Opportunity Act')[:href]).to eq('https://example.org/search#/search/trade_leads?trade_regions=African+Growth+and+Opportunity+Act')
    end
  end

  context 'when viewing STATE trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=state.json'
      expect(find_by_id('field_title').text).to eq('Title EOI Sri Lankan Airlines and Mihin Lanka')
      expect(find_by_id('field_description').text).to eq('Description Expression of Interest')
      expect(find_by_id('field_url')).to have_link('http://www.nsb.lk')
      expect(find_link('Transport and Logistics')[:href]).to eq('https://example.org/search#/search/trade_leads?industries=Transport+and+Logistics')
      expect(find_link('Sri Lanka')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Sri+Lanka')
      expect(find_link('South Asia')[:href]).to eq('https://example.org/search#/search/trade_leads?world_regions=South+Asia')
      expect(find_link('South Asian Association for Regional Cooperation')[:href]).to eq('https://example.org/search#/search/trade_leads?trade_regions=South+Asian+Association+for+Regional+Cooperation')
    end
  end

  context 'when viewing UK trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=uk.json'
      expect(find_by_id('field_title').text).to eq('Title Great Missenden CofE School 1FE Expansion - Commerical Team EOI')
      expect(find_by_id('field_description').text).to eq('Description Applications to be considered for inclusion on the tender list are invited')
      expect(find_by_id('field_url')).to have_link('http://www.buckscc.gov.uk')
      expect(find_link('Real Estate Services')[:href]).to eq('https://example.org/search#/search/trade_leads?industries=Real+Estate+Services')
      expect(find_link('United Kingdom')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=United+Kingdom')
      expect(find_link('Europe')[:href]).to eq('https://example.org/search#/search/trade_leads?world_regions=Europe')
      expect(find_link('European Union - 28')[:href]).to eq('https://example.org/search#/search/trade_leads?trade_regions=European+Union+-+28')
    end
  end

  context 'when viewing USTDA trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=ustda.json'
      expect(find_by_id('field_title').text).to eq('Title Mexico: International Competitive Tender: Shared Network (Red Compartida) for Telecommunications Services')
      expect(find_by_id('field_description').text).to eq('Description Background: The Government of Mexico')
      expect(find_by_id('field_url')).to have_link('https://www.ustda.gov/business-opportunities/trade-leads/mexico-international-competitive-tender-shared-network-red')
      expect(find_link('Mexico')[:href]).to eq('https://example.org/search#/search/trade_leads?countries=Mexico')
      expect(find_link('Latin America')[:href]).to eq('https://example.org/search#/search/trade_leads?world_regions=Latin+America')
      expect(find_link('NAFTA')[:href]).to eq('https://example.org/search#/search/trade_leads?trade_regions=NAFTA')
    end
  end
  
  context 'when rendering not found page' do
    it 'renders not found' do
      visit '/test_trade_lead.html?id=foo.json'
      expect(find_by_id('content').text).to eq('Not Found')
    end
  end
end
