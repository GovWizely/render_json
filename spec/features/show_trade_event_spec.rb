RSpec.describe 'trade event', type: :feature, js: true do
  context 'when viewing ITA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=ita.json'
      expect(find_by_id('field_event_name').find('h1').text).to eq('HEALTHCARE BUSINESS DEVELOPMENT MISSION TO CHINA')
      expect(find_by_id('field_description').text).to eq('October 16-21, 2016 MISSION DESCRIPTION The United States Department of Commerce, International Trade Administration, is organizing an executive-led Healthcare Business Development Mission to China with an emphasis on the Sector. The mission will be led by the Deputy Secretary of Commerce with participation from U.S. Department of Health and Human Services to facilitate access to the appropriate Chinese government agencies. The purpose of the mission is open access to Chinese government health officials and to introduce U.S. firms and trade associations to the Chinese Healthcare market as well as assist U.S. companies to find business partners and export their products and services to China. The mission is intended to include representatives from U.S. companies and U.S. trade associations with members that provide high end, innovative medical devices (especially imaging), healthcare technology equipment, innovative pharmaceuticals, hospital management or senior care management solutions, and medical education or training, hospital cooperation (i.e. management and education), as well as pharmaceuticals and senior care segments.')
      expect(find_by_id('field_registration_link')).to have_link('https://emenuapps.ita.doc.gov/ePublic/TM/7R0L', href: 'https://emenuapps.ita.doc.gov/ePublic/TM/7R0L')
    end
  end

  context 'when viewing SBA trade event page' do
    it 'renders fields' do
      visit '/test_trade_event.html?id=sba.json'
      expect(find_by_id('field_event_name').find('h1').text).to eq('Essentials of Harmonized Tariff Classification and Free Trade Agreement Compliance ')
      expect(find_by_id('field_description').text).to eq('The importance of tariff classification in international trade transactions cannot be understated. Exporters and importers are responsible for proper classification of their items, while misclassification may result in Customs delays, or worse, costly penalties and possible Customs seizure. And proper tariff classification is the foundation for ensuring compliance with the 14 Free Trade Agreements currently in place between the U.S. and 20 other countries. In addition to accurate classification of items and parts, careful determination and documentation of origin is also necessary in order to take advantage of the duty-free preferences afforded under Free Trade Agreements while ensuring compliance. This full-day, hands-on program will provide participants with an in-depth review of the Harmonized Tariff Schedule (HTS), including the HTS structure, General Rules of Interpretation, and classification procedures and best practices. The seminar will also review Free Trade Agreement compliance and origin determination, including rules of origin and related concepts such as tariff shifts, regional value content and de minimis. Proper documentation under Free Trade Agreements will also be discussed. Attendees are encouraged to bring either a hard copy of the Harmonized Tariff Schedule of the U.S. or a laptop or tablet computer in order to access the HTS online. We will conduct classification exercises and consult specific rules of origin as part of the workshop. Speakers include: Matthew Bock, Partner — Middleton & Shrull, LLC; Paula Connelly, Principal — Law Offices of Paula M. Connelly; Roland Shrull, Founding Partner — Middleton & Shrull, LLC.')
      expect(find_by_id('field_registration_link')).to have_link('http://www.mass.gov/export', href: 'https://goo.gl/zMQhvB')
    end
  end

  context 'when JSON data is not present' do
    it 'renders not found' do
      visit '/test_trade_event.html?id=foo.json'
      expect(find_by_id('content').text).to eq('Not Found')
    end
  end
end
