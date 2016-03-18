feature 'Attack' do
  scenario 'diminishes p2 tunage' do
    sign_in_and_play
    click_button 'Strum Vigorously!'
    expect(page).to have_text('Santana has lost 10% tunage!')
  end

  scenario 'diminshes p1 tunage' do
    sign_in_and_play
    attack
    click_button 'Strum Vigorously'
    expect(page).to have_text('Slash has lost 10% tunage!')
  end
end
