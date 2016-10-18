require './app/models/link'

feature 'Adding new links' do
  scenario 'Add new link' do
    link = Link.create(url: 'www.google.co.uk', title: 'Google')
    visit '/links/new'

    fill_in :title, with: "Google"
    fill_in :url, with: "www.google.co.uk"
    click_button 'Add link'
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content 'Google: www.google.co.uk'
    end
  end
end
