feature 'adding bookmarks' do
  scenario 'submits new bookmark via form' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    fill_in('title', with: 'Test')
    click_button('Submit')

    expect(page).to have_link('Test', href: 'http://testbookmark.com')
  end
end
