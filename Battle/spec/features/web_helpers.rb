def sign_in_and_play
  visit '/'
  fill_in :player_1, with: 'Slash'
  fill_in :player_2, with: 'Santana'
  click_button 'Create Musicians'
end
