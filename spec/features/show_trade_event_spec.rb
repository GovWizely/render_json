RSpec.describe 'trade event', type: :feature, js: true do
  context 'when viewing DL trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=dl.json'
      expect(find('h1').text).to eq('Direct Line for American Businesses: Doing Business in Tunisia')
      expect(page).to have_title('Direct Line for American Businesses: Doing Business in Tunisia')
      expect(find_by_id('trade_event_description').text).to eq('Direct Line: Doing Business in Tunisia Bureau of Economic and Business Affairs November 10, 2016')
      expect(find_by_id('trade_event_source').text).to eq('Source DL')
      expect(find_by_id('trade_event_url')).to have_link('http://www.state.gov/e/eb/directline/events/263555.htm', href: 'https://goo.gl/zuTYZe')
    end
  end

  context 'when viewing ITA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=ita.json'
      expect(find('h1').text).to eq('Trade Event 36282')
      expect(page).to have_title('Trade Event 36282')
      expect(find_by_id('trade_event_description').text).to eq('Event 36282 description.')
      expect(find_by_id('trade_event_event_type').text).to eq('Event Type Trade Mission')
      expect(find_by_id('trade_event_cost').text).to eq('Cost $4400')
      expect(find_by_id('trade_event_start_date').text).to eq('Start Date Sun May 15 2016')
      expect(find_by_id('trade_event_end_date').text).to eq('End Date Tue May 24 2016')
      expect(find_by_id('trade_event_registration_url')).to have_link('https://ita.trade.event.example.org/registration/36282')
      expect(find_by_id('trade_event_venues').text).to eq('Venues Moscone Center, San Francisco San Francisco CA United States')
      expect(find_by_id('trade_event_source').text).to eq('Source ITA')
      expect(find_by_id('trade_event_contacts').text).to eq('Contacts John Doe Taipei Commercial Officer Phone: 886-2-1111-2222 John.Doe@example.gov Jane Doe Seoul Trade Specialist Phone: 82-2-333-4444 Jane.Doe@example.gov')
      expect(find_by_id('trade_event_industries')).to have_link('Franchising', href: 'https://example.org/search#/search/trade_events?industries=Franchising')
      expect(find_by_id('trade_event_url')).to have_link('https://ita.trade.event.example.org/event/36282', href: 'https://goo.gl/ita1')
    end
  end

  context 'when viewing SBA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=sba.json'
      expect(find('h1').text).to eq('SBA Trade Event 73022')
      expect(page).to have_title('SBA Trade Event 73022')
      expect(find_by_id('trade_event_description').text).to eq('SBA Trade Event 73022 description.')
      expect(find_by_id('trade_event_event_type').text).to eq('Event Type Resource Partner')
      expect(find_by_id('trade_event_cost').text).to eq('Cost $35')
      expect(find_by_id('trade_event_start_date').text).to eq('Start Date Tue May 17 2016')
      expect(find_by_id('trade_event_start_time').text).to eq('Start Time 8:30 AM')
      expect(find_by_id('trade_event_end_date').text).to eq('End Date Tue May 24 2016')
      expect(find_by_id('trade_event_end_time').text).to eq('End Time 10:30 AM')
      expect(find_by_id('trade_event_registration_url')).to have_link('https://sba.trade.event.example.org/registration/73022', href: 'https://goo.gl/sba1')
      expect(find_by_id('trade_event_venues').text).to eq('Venues Trade Business Councils 600 Trade Drive Trade Township PA United States Hotel TW 100 Broadway New York NY United States')
      expect(find_by_id('trade_event_source').text).to eq('Source SBA')
      expect(find_by_id('trade_event_contacts').text).to eq('Contacts Doe Small Business Administration Phone: 111-222-3333 john.doe@example.org')
      expect(find_by_id('trade_event_industries')).to have_link('eCommerce Industry', href: 'https://example.org/search#/search/trade_events?industries=eCommerce+Industry')
    end
  end

  context 'when viewing USTDA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=ustda.json'
      expect(find('h1').text).to eq('Vietnam Natural Gas Sector Business Briefing')
      expect(page).to have_title('Vietnam Natural Gas Sector Business Briefing')
      expect(find_by_id('trade_event_description').text).to eq('As part of the Vietnam Natural Gas Sector Reverse Trade Mission there will be a one-day Business Briefing in Houston, Texas on October 24, 2016.')
      expect(find_by_id('trade_event_cost').text).to eq('Cost $50')
      expect(find_by_id('trade_event_start_date').text).to eq('Start Date Sun Oct 16 2016')
      expect(find_by_id('trade_event_end_date').text).to eq('End Date Mon Oct 24 2016')
      expect(find_by_id('trade_event_venues').text).to eq('Venues Houston, TX Houston, TX Texas')
      expect(find_by_id('trade_event_source').text).to eq('Source USTDA')
      expect(find_by_id('trade_event_contacts').text).to eq('Contacts john@example.com')
      expect(find_by_id('trade_event_industries')).to have_link('Renewable Energy', href: 'https://example.org/search#/search/trade_events?industries=Renewable+Energy')
      expect(find_by_id('trade_event_url')).to have_link('https://www.ustda.gov/events/2016/south-and-southeast-asia/vietnam-natural-gas-sector-business-briefing', href: 'https://goo.gl/RMbxzQ')
    end
  end

  context 'when viewing foreign currency in USTDA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=ustda_foreign_currency.json'
      expect(find('h1').text).to eq('Vietnam Natural Gas Sector Business Briefing')
      expect(page).to have_title('Vietnam Natural Gas Sector Business Briefing')
      expect(find_by_id('trade_event_cost').text).to eq('Cost 50EUR')
    end
  end

  context 'when JSON data is not present' do
    it 'renders not found' do
      visit '/test_trade_event.html?id=foo.json'
      expect(find_by_id('content').text).to eq('Page Not Found')
      expect(page).to have_title('Page Not Found')
    end
  end
end
