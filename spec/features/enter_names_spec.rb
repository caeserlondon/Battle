
feature 'Enter player names' do
  scenario 'players can fill in their names and see those names on screen' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content "Ryan vs. Caeser"
  end
end