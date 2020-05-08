feature 'edit Diary' do
  scenario 'able to eddit title and body' do
    diary = Diary.create(title: 'Title', body: 'Body')
    visit('/diary')
    diary.each do |foo|
      page.find(:xpath, "/diary/edit/<%= foo['id'] %>/<%= foo['title'] %>").click
      fill_in 'title-edit', with: 'Title edit'
      fill_in 'body-edit', with: 'Body edit'
      click_button 'Edit Diary'
      expect(page).to have_content 'Title edit'
      expect(page).to have_content 'Body edit'
    end
  end

end