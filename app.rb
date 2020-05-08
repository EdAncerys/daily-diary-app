require 'sinatra/base'
require_relative './lib/diary'

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
    @diary = Diary.all
    erb :'diary/diary'
  end

  get '/diary/new' do
    erb :'diary/new'
  end

  post '/diary-submit' do
    Diary.create(title: params[:title], body: params[:body])
    redirect :'/diary'
  end

  get '/diary/:id/:title' do
    @diary_id = Diary.find(id: params[:id])
    erb :'/diary/view'
  end

  post '/diary/:id/delete' do
    Diary.delete(id: params[:id])
    redirect :'/diary'
  end

  get '/diary/edit/:id/:title' do
    @diary_edit = Diary.find(id: params[:id])
    erb :'diary/edit'
  end

  post '/diary-edit/:id' do
    Diary.edit(id: params['id'], title: params['title-edit'], body: params['body-edit'])
    redirect '/diary'
  end

  run! if app_file == $0
end
