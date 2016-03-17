feature 'Attacking' do
  scenario 'diminshes opponent tunage' do
    sign_in_and_play
    click_button 'Strum Vigorously!'
    click_link 'Sweet! Back to jamming!'
    expect(page).not_to have_text('Santana has 100% tunage!')
    expect(page).to have_text('Santana has 90% tunage!')

  end

end
