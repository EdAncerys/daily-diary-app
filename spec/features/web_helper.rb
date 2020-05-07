def add_diary_entry
  visit('/diary/new')
  fill_in('title', 'Title')
  fill_in('Diary', 'This is a my first diary')
  click_button 'Add to Diary'
end