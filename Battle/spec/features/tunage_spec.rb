feature 'Shows opponent tuning percentage' do
  scenario 'user requests tuning percentage' do
    sign_in_and_play
    expect(page).to have_text('Santana has 100% tunage!')
  end
end
