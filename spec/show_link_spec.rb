feature 'show links on homepage' do
  scenario 'show a link' do
    link = Link.create(url: 'example.com', name: 'link')
    visit '/'
    expect(page).to have_link 'link'
  end
end
