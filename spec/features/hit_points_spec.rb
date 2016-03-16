require './app'

feature "view hit points" do
  scenario "see Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content("Fluffy: 10HP")
  end
end
