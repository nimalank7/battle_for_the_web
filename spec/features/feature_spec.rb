require_relative "./web_helpers.rb"

feature 'Testing infrastructure' do

  scenario 'Can allow players to enter their name and see them' do
    sign_in_and_play
    expect(page).to have_content 'Bob v James'
  end
  scenario 'View Player 2 Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'James: 100HP'
  end
  scenario 'Attacks Jill and returns confirmation' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Bob attacked James!'
  end
  scenario 'Return to homepage after attacking' do
    sign_in_and_play
    click_button "Attack"
    click_button "Return to play"
    expect(page).to have_content 'James: 90HP'
  end
end
