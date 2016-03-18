feature 'play page' do
  scenario 'shows diminshed p2 tunage' do
    sign_in_and_play
    attack
    expect(page).not_to have_text('Santana has 100% tunage!')
    expect(page).to have_text('Santana has 90% tunage!')
  end

  scenario 'shows diminshed p1 tunage' do
    sign_in_and_play
    2.times{attack}
    expect(page).not_to have_text('Slash has 100% tunage!')
    expect(page).to have_text('Slash has 90% tunage!')
  end
end
