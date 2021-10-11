feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit('/bookmark')
    

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
