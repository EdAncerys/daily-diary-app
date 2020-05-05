require 'sinatra/base'

class DailyDiaryApp < Sinatra::Base

  get '/diary' do
    erb :diary
  end

  run! if app_file == $0
end