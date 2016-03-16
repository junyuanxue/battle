def sign_in_and_play
  visit '/'
  fill_in :player_1, with: 'Miles'
  fill_in :player_2, with: 'Thelonious'
  click_button 'Create Musicians'
end
