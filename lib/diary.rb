require 'pg'

class Diary
  attr_reader :id, :title, :body

  def initialize(id:, title:, body:)
    @id = id
    @title = title
    @body = body
  end

  def self.create(title:, body:)
    diary = connect_to_database.exec("INSERT INTO diary(title, body) VALUES ('#{title}', '#{body}')")
  end

  def self.all
    diary = connect_to_database.exec("SELECT * FROM diary")
    diary.each do |diary|
      Diary.new(
        id: diary['id'],
        title: diary['title'],
        body: diary['body']
      )
    end
  end

  def self.find(id:)
    diary = connect_to_database.exec("SELECT * FROM diary WHERE id = #{id}")
  end

  def self.delete(id:)
    connect_to_database.exec("DELETE FROM diary WHERE id = #{id}")
  end

  def self.edit(id:, title:, body:)
    connect_to_database.exec("UPDATE diary SET title = '#{title}', body = '#{body}' WHERE id = #{id}")
  end

  private

  def self.connect_to_database
    if ENV['ENVIROMENT'] = 'test'
      PG.connect :dbname => 'daily_diary_app_test'
    else
      PG.connect :dbname => 'daily_diary_app'
    end
  end

end