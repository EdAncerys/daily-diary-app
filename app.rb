require 'sinatra/base'

class DailyDiaryApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/sign-in' do
    erb :'/user/sign_in'
  end

  get '/sign-up' do
    erb :'/user/sign_up'
  end

  run! if app_file == $0
end
