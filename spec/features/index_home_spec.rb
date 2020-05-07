feature 'diary page' do
  scenario 'should see log_in and sign_up path' do
    visit('/')
    expect(page).to have_content 'Welcome to Diary App'
  end

end