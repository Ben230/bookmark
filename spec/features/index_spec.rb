feature 'welcomes user' do
  scenario 'welcomes user on home page' do
    visit '/'
    expect(page).to have_content 'Hello'
  end
end
