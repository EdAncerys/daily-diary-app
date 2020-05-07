feature 'Add diary' do
  scenario 'add new diary' do
    visit('/diary')
    click_button 'Add new Diary'

    expect(current_path).to eq '/diary/new'
  end

  scenario 'able to see diary entry' do
    
  end

end