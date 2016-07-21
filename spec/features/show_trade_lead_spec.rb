RSpec.describe 'trade lead', type: :feature, js: true do
  context 'when viewing Australia trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=australia.json'
      expect(find_by_id('field_description').text).to eq('Description Building Lease')
      expect(find_by_id('field_url')).to have_link('http://bit.ly/AuAuAu')
      expect(find_by_id('field_ita_industries').text).to eq('Industries Real Estate Services')
      expect(find_by_id('field_country_name').text).to eq('Country Australia')
      expect(find_by_id('field_trade_regions').text).to eq('Trade regions Trans Pacific Partnership Asia Pacific Economic Cooperation')
      expect(find_by_id('field_world_regions').text).to eq('World regions Oceania Pacific Rim Asia Pacific')
    end
  end

  context 'when viewing Canada trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=canada.json'
      expect(find_by_id('field_title').text).to eq('Title INVITATION')
      expect(find_by_id('field_description').text).to eq('Description INVITATION TO SUBMIT')
      expect(find_by_id('field_urls')).to have_link('http://bit.ly/CaCaCa')
      expect(find_by_id('field_urls')).to have_link('http://bit.ly/CnCnCn')
      expect(find_by_id('field_ita_industries').text).to eq('Industries Real Estate Services')
      expect(find_by_id('field_country_name').text).to eq('Country Canada')
      expect(find_by_id('field_trade_regions').text).to eq('Trade regions NAFTA Trans Pacific Partnership Asia Pacific Economic Cooperation')
      expect(find_by_id('field_world_regions').text).to eq('World regions North America Western Hemisphere Pacific Rim')
    end
  end

  context 'when viewing FBO trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=fbo.json'
      expect(find_by_id('field_title').text).to eq('Title Solicitation')
      expect(find_by_id('field_description').text).to eq('Description $fbo description')
      expect(find_by_id('field_url')).to have_link('http://bit.ly/FbFbFb')
      expect(find_by_id('field_ita_industries').text).to eq('Industries Petroleum Refineries')
      expect(find_by_id('field_country_name').text).to eq('Country Bangladesh')
      expect(find_by_id('field_trade_regions').text).to eq('Trade regions Global System of Trade Preferences among Developing Countries South Asian Association for Regional Cooperation')
      expect(find_by_id('field_world_regions').text).to eq('World regions South Asia Asia')
    end
  end

  context 'when viewing MCA trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=mca.json'
      expect(find_by_id('field_title').text).to eq('Title Job Vacancies')
      expect(find_by_id('field_description').text).to eq('Description $MCA description')
      expect(find_by_id('field_url')).to have_link('http://bit.ly/McMcMc')
      expect(find_by_id('field_country_name').text).to eq('Country Liberia')
      expect(find_by_id('field_trade_regions').text).to eq('Trade regions African Growth and Opportunity Act')
      expect(find_by_id('field_world_regions').text).to eq('World regions West Africa Africa Sub-Saharan Africa')
    end
  end

  context 'when viewing STATE trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=state.json'
      expect(find_by_id('field_title').text).to eq('Title Sri Lankan Airlines')
      expect(find_by_id('field_description').text).to eq('Description $STATE description')
      expect(find_by_id('field_url')).to have_link('http://bit.ly/STSTST')
      expect(find_by_id('field_country_name').text).to eq('Country Sri Lanka')
      expect(find_by_id('field_trade_regions').text).to eq('Trade regions Global System of Trade Preferences among Developing Countries South Asian Association for Regional Cooperation')
      expect(find_by_id('field_world_regions').text).to eq('World regions South Asia Asia')
    end
  end

  context 'when viewing UK trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=uk.json'
      expect(find_by_id('field_title').text).to eq('Title Employment')
      expect(find_by_id('field_description').text).to eq('Description $UK description')
      expect(find_by_id('field_url')).to have_link('http://bit.ly/NNNNNN')
      expect(find_by_id('field_country_name').text).to eq('Country United Kingdom')
      expect(find_by_id('field_trade_regions').text).to eq('Trade regions European Union - 28')
      expect(find_by_id('field_world_regions').text).to eq('World regions Europe')
    end
  end

  context 'when viewing USTDA trade lead page' do
    it 'renders fields' do
      visit '/test_trade_lead.html?id=ustda.json'
      expect(find_by_id('field_title').text).to eq('Title Ethiopian')
      expect(find_by_id('field_description').text).to eq('Description $USTDA description')
      expect(find_by_id('field_url')).to have_link('http://bit.ly/UUUUUU')
      expect(find_by_id('field_country_name').text).to eq('Country Ethiopia')
      expect(find_by_id('field_trade_regions').text).to eq('Trade regions African Growth and Opportunity Act')
      expect(find_by_id('field_world_regions').text).to eq('World regions Africa Sub-Saharan Africa')
    end
  end
  
  context 'when rendering not found page' do
    it 'renders not found' do
      visit '/test_trade_lead.html?id=foo.json'
      expect(find_by_id('content').text).to eq('Not Found')
    end
  end
end
