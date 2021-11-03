feature 'player 1 attack player 2' do
  scenario 'player 1 attack player 2' do
    sign_in_and_play
    # save_and_open_page
    click_link('Attack')
    expect(page).to have_content 'Ryan attacked Caeser'
  end
end

feature 'attack reduces HP by 10' do
  scenario 'player 1 attacks player 2, player 2 HP -10' do
    sign_in_and_play
    # save_and_open_page
    click_link('Attack')
    expect(page).not_to have_content 'Caeser has 100HP'
    expect(page).to have_content 'Caeser has 90HP'
  end
end