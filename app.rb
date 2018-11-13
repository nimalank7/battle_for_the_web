require 'sinatra/base'
class Battle < Sinatra::Base
  enable :sessions

  get '/players' do
    erb(:player_form)
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:player_names)
  end

  post '/names' do
    p params
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect to('/play')
  end
  run! if app_file == $0
end
