require_relative './web_helper'

feature 'Add diary' do
  scenario 'have field to add diary/title and submit' do
    visit('/diary/new')

    expect(page).to have_field 'title'
    expect(page).to have_field 'body'
    expect(page).to have_button 'Add new Diary'
  end

  scenario 'able to add new diary' do
    add_diary_entry

    expect(current_path).to eq '/diary'
    expect(page).to have_content 'Diary Title'
  end
end