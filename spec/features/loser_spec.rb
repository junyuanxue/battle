

feature "Losing the game" do
  scenario "display a 'lose' message when HP reaches 0" do
    sign_in_and_play
    visit '/play'
    allow(Kernel).to receive(:rand).and_return 2
    18.times do
      click_link 'Attack!'
      click_link 'Next round!'
    end
    click_link 'Attack!'
    expect(page).to have_content "Pete has lost! :("
  end
end
