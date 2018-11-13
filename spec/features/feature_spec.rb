feature 'Testing infrastructure' do

  scenario 'Can allow players to enter their name and see them' do
    visit('/players')
    fill_in 'player_1', with: 'Bob'
    fill_in 'player_2', with: 'James'
    click_button "Submit"
    expect(page).to have_content 'Bob and James' #
  end
  scenario 'View Player 2 Hit Points' do
    visit('/')
    fill_in 'player_1', with: 'Bob'
    fill_in 'player_2', with: 'James'
    click_button "Submit"
    expect(page).to have_content 'James: 100HP' #
  end
end
