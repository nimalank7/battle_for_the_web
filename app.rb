require 'sinatra/base'
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $game = Game.new(params[:player_1], params[:player_2])
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    $game.attack($game.player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
