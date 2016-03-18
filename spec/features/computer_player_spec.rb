feature "Computer player" do
  scenario "computer attacks the player" do
    visit '/'
    fill_in(:player1, with: 'Fluffy')
    fill_in(:player2, with: 'Computer')
    click_button 'Enter Battle!!'
    click_button 'Basic Attack'
    click_link 'Next round!'
    expect(page).to have_content 'Computer just attacked you!'
  end
end
