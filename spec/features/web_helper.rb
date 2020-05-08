def add_diary_entry
  visit('/diary/new')
  fill_in('title', with: 'Diary Title')
  fill_in('body', with: 'My first Diary body')
  click_button 'Add new Diary'
end