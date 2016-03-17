feature "Losing the game" do
  before do
    sign_in_and_play
    visit '/play'
<<<<<<< HEAD
    allow(Kernel).to receive(:rand).and_return 2
    18.times do
      click_link 'Attack!'
=======
    8.times do
      click_button 'Basic Attack'
>>>>>>> day-four
      click_link 'Next round!'
    end
    click_button 'Basic Attack'
  end

  scenario "display a 'lose' message when HP reaches 0" do
    expect(page).to have_content "Pete has lost! :("
  end

  scenario "play again" do
    click_link "Play again"
    expect(page).to have_content "Enter Battle!!"
  end
end
