
def sign_in_and_play
  visit('/')
  fill_in :player_one_name, with: 'Ryan'
  fill_in :player_two_name, with: 'Caeser'
  click_button 'Submit'
end