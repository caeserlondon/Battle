
feature 'view player 2 hit points' do
  scenario 'player 1 can view player 2 hit points' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Caeser: 100HP'
  end
end