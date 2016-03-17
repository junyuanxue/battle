feature 'Attack' do
  scenario 'diminishes opponents tunage' do
    sign_in_and_play
    click_button 'Strum Vigorously!'

    expect(page).to have_text('Santana has lost 10% tunage!')
  end

end
