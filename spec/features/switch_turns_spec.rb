require './app'

feature "switch turns" do
  scenario "seeing the current turn at the start of the game" do
    sign_in_and_play
    expect(page).to have_content "Mittens's turn"
  end

  scenario "switch turns after Play 1 has attacked" do
    sign_in_and_play
    click_link "Attack!!!!"
    click_link "Woohoo!"
    expect(page).not_to have_content "Mittens's turn"
    expect(page).to have_content "Fluffy's turn"
  end
end
