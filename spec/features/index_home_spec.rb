feature 'home page' do
  scenario 'able to see home page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Diary App'
  end

  scenario 'have sign-up and sign-in buttons' do
    visit('/')

    expect(page).to have_button 'Sign Up'
    expect(page).to have_button 'Log In'
  end

end