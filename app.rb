require 'sinatra/base'

class DailyDiaryApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/sign-in' do
    erb :'/user/sign_in'
  end

  get '/sign-up' do
    erb :'/user/sign_up'
  end

  get '/diary' do
    @title = session[:title]
    erb :'diary/diary'
  end

  get '/diary/new' do
    erb :'diary/new'
  end

  post '/diary-submit' do
    session[:title] = params[:title]
    redirect '/diary'
  end

  run! if app_file == $0
end
