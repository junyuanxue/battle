feature 'game over' do
  scenario 'one player loses when tunage reaches 0%' do
    sign_in_and_play
    19.times { attack }
    expect(page).to have_content 'Slash is completely out of tune.'
  end
end
