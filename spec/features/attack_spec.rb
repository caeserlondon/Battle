feature 'player 1 attack player 2' do
  scenario 'player 1 attack player 2' do
    sign_in_and_play
    save_and_open_page
    click_link('Attack')
    expect(page).to have_content 'Ryan attacked Caeser'
  end
end