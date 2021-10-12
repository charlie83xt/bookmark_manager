feature 'Adding a bookmark' do
  scenario 'A user add a bookmark to bookmark_manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://example.org')
    click_button('Submit')

    expect(page).to have_content 'http://example.org'
  end
end
