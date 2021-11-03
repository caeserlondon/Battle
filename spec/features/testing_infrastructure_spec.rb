# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Enter player names' do
  scenario 'players can fill in their names and see those names on screen' do
    visit('/')
    fill_in :player_one_name, with: 'Toby'
    fill_in :player_two_name, with: 'Mike'
    click_button 'Submit'
    expect(page).to have_content "Toby vs. Mike"
  end
end