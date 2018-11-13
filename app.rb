require 'sinatra/base'
class Battle < Sinatra::Base
  get '/players' do
    erb(:player_form)
  end
  post '/names' do
    p params
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    "#{@player_1} and #{@player_2}"
  end
  run! if app_file == $0
end
