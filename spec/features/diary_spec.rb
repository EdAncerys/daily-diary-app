require_relative './web_helper'

feature 'Add diary' do
  scenario 'add new diary' do
    visit('/diary')
    click_button 'Add new Diary'

    expect(current_path).to eq '/diary/new'
  end

  scenario 'able to see diary entry' do
    add_diary_entry

    expect(page).to have_content "Diary Title"
  end

  scenario 'able to see title and body' do
    diary = Diary.create(title: 'Diary Title', body: 'Diary Body')
    diary.each do |foo|
      click_link "/diary/#{foo['id']}"
      expect(current_path).to eq "/diary/#{foo['id']}"
      expect(page).to have_content "#{foo['title']}"
      expect(page).to have_content "#{foo['body']}"
    end
  end

end