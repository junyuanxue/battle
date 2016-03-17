
feature 'Creating new players', :type => :feature do
  scenario 'User enters name' do
    sign_in_and_play
    expect(page).to have_text('Slash and Santana are ready to jam!')
  end
end
