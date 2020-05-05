feature 'diary page' do
  scenario 'should see log_in and sign_up path' do
    visit('/diary')
    expect(page).to have_link('Sign Up', href: '/diary/sign_up')
    expect(page).to have_link('Log In', href: '/diary/log_in')
  end

end