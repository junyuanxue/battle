require './app'

feature "Enter names" do
  scenario "User can enter a name" do
    sign_in_and_play
    expect(page).to have_content("Kevin vs Fluffy.")
  end
end
