feature 'Views bookmarks' do
  scenario 'views a set of bookmarks' do
    visit '/'
    click_button 'View Bookmarks'
    expect(page).to have_content 'Google'
    expect(page).to have_content 'Youtube'
  end
end
