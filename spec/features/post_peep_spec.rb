feature 'Posting a peep on chitter' do
  scenario 'user can enter something into shitter and appears on home page' do
    visit ('/')
    click_button 'Add peep'
    fill_in 'new_peep', with: 'I love lil peep 4eva'
    click_button 'Post dat peep'

    expect(page).to have_content('I love lil peep 4eva')
  end
end