require './app/models/link'

feature 'show links on homepage' do
  scenario 'show a link' do
    link = Link.create(url: 'example.com', title: 'link')
    visit '/links'
    # expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content 'Title: link'
    end
  end
end
