require './app'

feature "enter names" do
  scenario "user can enter a name" do
    sign_in_and_play
    expect(page).to have_content("Mittens vs Fluffy.")
  end
end
