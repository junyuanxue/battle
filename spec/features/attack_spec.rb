feature 'Attack opponent' do

  before do
    sign_in_and_play
    visit '/play'
    allow(Kernel).to receive(:rand).and_return 2
    click_link('Attack!')
  end

  scenario 'P1 attacks P2 and P2 loses HP' do
    expect(page).to have_content "Pete HP: 18"
  end

  scenario 'P2 attacks P1 and P1 loses HP' do
    click_link('Next round!')
    click_link('Attack!')
    expect(page).to have_content "Misa HP: 18"
  end
end
