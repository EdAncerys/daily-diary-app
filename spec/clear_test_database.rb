require 'pg'

def clear_test_database
  connection = PG.connect :dbname => 'daily_diary_app_test'
  connection.exec('TRUNCATE diary')
end