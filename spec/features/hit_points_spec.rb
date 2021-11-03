
feature 'view player 2 hit points' do
  scenario 'player 1 can view player 2 hit points' do
    visit('/')
    fill_in :player_one_name, with: 'Ryan'
    fill_in :player_two_name, with: 'Caeser'
    click_button 'Submit'
    expect(page).to have_content 'Caeser: 100HP'
  end
end