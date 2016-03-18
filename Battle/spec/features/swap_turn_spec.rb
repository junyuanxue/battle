feature 'swap-turn' do
  scenario 'swaps player after attack' do
    sign_in_and_play
    attack
    expect(page).to have_text("Santana's turn to jam!")
  end

end
