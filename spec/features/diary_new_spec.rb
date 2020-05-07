feature 'Add diary' do
  scenario 'have field to add diary/title and submit' do
    visit('/diary/new')

    expect(page).to have_field 'title'
    expect(page).to have_field 'diary'
    expect(page).to have_button 'Add new Diary'
  end

  scenario 'able to add new diary' do
    visit('/diary/new')
    fill_in('title', with: 'Diary Title')
    fill_in('diary', with: 'My first Diary body')
    click_button 'Add new Diary'

    expect(current_path).to eq '/diary'
    expect(page).to have_content 'Title: Diary Title'
  end
end