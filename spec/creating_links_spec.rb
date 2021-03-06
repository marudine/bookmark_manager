feature 'produces a form for dding address and title to database' do
  scenario 'provides text boxes and a button for entering data then submits it to database ' do
    visit '/'
    fill_in 'Title', with: 'Google'
    fill_in 'URL', with: 'https://inbox.google.com/u/0/?pli=1'
    click_button 'Submit links!'
    expect(page).to have_content('https://inbox.google.com/u/0/?pli=1')
  end
end
