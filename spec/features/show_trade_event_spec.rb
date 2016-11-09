RSpec.describe 'trade event', type: :feature, js: true do
  context 'when viewing DL trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=dl.json'
      expect(find_by_id('field_event_name').find('h1').text).to eq('2016 fall JJL Education Fair in Wuhan')
      expect(find_by_id('field_cost').text).to eq('$750')
      expect(find_by_id('field_start_at').text).to eq('Sun Oct 23 2016')
      expect(find_by_id('field_url')[:href]).to eq('https://www.export.gov/tradeevent?id=45f10e82b2ba6435891722e4a484864726c1fb59')
      expect(find_by_id('field_description').text).to eq('This is a Post Initiative Event Agreement between the Commercial Service of the U.S. Consulate General in Wuhan (hereafter referred to as CS WH) and JJL Overseas Education Consulting &amp; Service Co., Ltd. Wuhan Branch (hereafter referred to as JJL WH) in which CS WH will help JJL WH promote its education service on Oct. 23, 2016 (Wuhan).')
      expect(find_by_id('field_event_type').find('h3').text).to eq('Post Initiated Event-Under 5k')
      expect(find_by_id('field_industries').find('h3').text).to eq('Education')
      expect(find_by_id('field_contacts').text).to eq('Catherine Le, Wuhan Commercial Assistant 86-27-8555-7791 Catherine.Le@trade.gov')
      expect(find_by_id('field_post').text).to eq('Wuhan, China')
    end
  end

  context 'when viewing ITA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=ita.json'
      expect(find_by_id('field_cost').text).to eq('$750')
      expect(find_by_id('field_start_date').text).to eq('Start date Sun Oct 23 2016')
      expect(find_by_id('field_end_date').text).to eq('End date Sun Oct 23 2016')
      expect(find_by_id('field_event_name').find('h1').text).to eq('2016 fall JJL Education Fair in Wuhan')
      expect(find_by_id('field_registration_link')).to have_link('https://example.org/search#/search/tradeevent?id=45f10e82b2ba6435891722e4a484864726c1fb59', href: 'https://example.org/search#/search/tradeevent?id=45f10e82b2ba6435891722e4a484864726c1fb59')
      expect(find_by_id('field_description').text).to eq('This is a Post Initiative Event Agreement between the Commercial Service of the U.S. Consulate General in Wuhan (hereafter referred to as CS WH) and JJL Overseas Education Consulting &amp; Service Co., Ltd. Wuhan Branch (hereafter referred to as JJL WH) in which CS WH will help JJL WH promote its education service on Oct. 23, 2016 (Wuhan).')
      expect(find_by_id('field_event_type').find('h3').text).to eq('Post Initiated Event-Under 5k')
      expect(find_by_id('field_industries').find('h3').text).to eq('Education')
      expect(find_by_id('field_contacts').text).to eq('Catherine Le, Wuhan Commercial Assistant 86-27-8555-7791 Catherine.Le@trade.gov')
      expect(find_by_id('field_location').text).to eq('Wuhan, China')
      expect(find_by_id('field_source').text).to eq('ITA')
    end
  end

  context 'when viewing SBA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=sba.json'
      expect(find_by_id('field_event_name').find('h1').text).to eq('Vietnam Natural Gas Sector Business Briefing')
      expect(find_by_id('field_cost').text).to eq('$495')
      expect(find_by_id('field_start_at').text).to eq('Tues Nov 01 2016')
      expect(find_by_id('field_ends_at').text).to eq('Thurs Nov 03 2016')
      expect(find_by_id('field_url')[:href]).to eq('https://www.export.gov/tradeevent?id=45f10e82b2ba6435891722e4a484864726c1fb59')
      expect(find_by_id('field_description').text).to eq('As part of the Vietnam Natural Gas Sector Reverse Trade Mission there will be a one-day Business Briefing in Houston, Texas on October 24, 2016. This Business Briefing will provide a forum for 12 high-level representatives from Vietnamâ��s energy sector to share information with U.S. companies on their needs, upcoming procurements and plans for natural gas development in Vietnam. One-on-one meetings with the delegates will be arranged for U.S. companies. Business Briefing Flyer For more information about how your company can participate, please contact David Elliott at davidelliott@kealtd.com.')
      expect(find_by_id('field_event_type').find('h3').text).to eq('SBA Participating')
      expect(find_by_id('field_start_time').text).to eq('8:00 AM')
      expect(find_by_id('field_end_time').text).to eq('4:00 PM')
      expect(find_by_id('field_time_zone').text).to eq('America/Chicago')
      expect(find_by_id('field_registration_url')[:href]).to have_link('https://www.regonline.com/Register/Checkin.aspx?EventID=1825401', href: 'http://bit.ly/2dRnljm')     
      expect(find_by_id('field_contacts').text).to eq('davidelliott@kealtd.com')
      expect(find_by_id('field_location').text).to eq('Houston, TX, Texas')
      expect(find_by_id('field_source').text).to eq('SBA')
    end
  end

  context 'when viewing USTDA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=ustda.json'
      expect(find_by_id('field_event_name').find('h1').text).to eq('Vietnam Natural Gas Sector Business Briefing')
      expect(find_by_id('field_cost').text).to eq('n/a')
      expect(find_by_id('field_start_at').text).to eq('Mon Oct 24 2016')
      expect(find_by_id('field_url')[:href]).to eq('https://www.export.gov/tradeevent?id=45f10e82b2ba6435891722e4a484864726c1fb59')
      expect(find_by_id('field_description').text).to eq('As part of the Vietnam Natural Gas Sector Reverse Trade Mission there will be a one-day Business Briefing in Houston, Texas on October 24, 2016. This Business Briefing will provide a forum for 12 high-level representatives from Vietnamâ��s energy sector to share information with U.S. companies on their needs, upcoming procurements and plans for natural gas development in Vietnam. One-on-one meetings with the delegates will be arranged for U.S. companies. Business Briefing Flyer For more information about how your company can participate, please contact David Elliott at davidelliott@kealtd.com.')
      expect(find_by_id('field_start_time').text).to eq('2:48 PM')
      expect(find_by_id('field_end_time').text).to eq('2:48 PM')
      expect(find_by_id('field_industries').find('h3').text).to eq('Renewable Energy')
      expect(find_by_id('field_contacts').text).to eq('davidelliott@kealtd.com')
      expect(find_by_id('field_location').text).to eq('Houston, TX, Texas')
      expect(find_by_id('field_source').text).to eq('USTDA')
    end
  end

  context 'when JSON data is not present' do
    it 'renders not found' do
      visit '/test_trade_event.html?id=foo.json'
      expect(find_by_id('content').text).to eq('Not Found')
    end
  end
end
