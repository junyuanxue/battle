def sign_in_and_play
  visit '/'
  fill_in :player_1, with: 'Slash'
  fill_in :player_2, with: 'Santana'
  click_button 'Create Musicians'
end

def attack
  click_button 'Strum Vigorously!'
  click_button 'Sweet! Back to jamming!'
end
