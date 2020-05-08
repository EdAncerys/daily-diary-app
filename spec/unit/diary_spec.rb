require 'diary'
require 'pg'

describe Diary do
  describe '.create' do
    it 'creates a new bookmark' do
      Diary.create(title: 'Title', body: 'Diary Body')
      diary_connect = PG.connect :dbname => 'daily_diary_app_test'
      diary = diary_connect.exec('SELECT * FROM diary')

      diary.each do |diary|
        expect(diary['title']).to include('Title')
        expect(diary['body']).to eq 'Diary Body'
      end

    end
  end

  # describe '.all' do
  #   it 'iterates through all records' do
  #     Diary.create(title: 'Title', body: 'Diary Body')
  #     diary_connect = PG.connect :dbname => 'daily_diary_app_test'
  #     diary = diary_connect.exec('SELECT * FROM diary')

  #   end
end
