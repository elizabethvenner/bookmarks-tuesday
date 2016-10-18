require './app/models/link'

feature 'Adding new links' do
  scenario 'Add new link' do
    link = Link.create(url: 'example.com', title: 'link')
    visit '/links/new'

    fill_in :title, with: "Google"
    fill_in :url, with: "www.google.co.uk"
    click_button 'Add link'


    within 'ul#links' do
      expect(page).to have_content 'Google: www.google.co.uk'
    end
  end
end
