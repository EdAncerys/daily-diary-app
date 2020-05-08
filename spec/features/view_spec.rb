feature 'view Diary' do
  scenario 'able to see selected Diary' do
    diary = Diary.create(title: 'Title', body: 'Body')
    visit('/diary')
    diary.each do |foo|
      click_link "/diary/<%= foo['id'] %>"

      expect(curent_path).to eq "/diary/<%= foo['id'] %>"
      expect(page).to have_content "<%= foo['title'] %>"
      expect(page).to have_content "<%= foo['body'] %>"
    end
  end

end