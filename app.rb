require 'sinatra/base'
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @game = Game.new_game(params[:player_1], params[:player_2])
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @attacker = @game.attacker.name
    being_attacked = @game.being_attacked
    @game.attack(being_attacked)
    @being_attacked_name = being_attacked.name
    @being_attacked_hit_points = being_attacked.hit_points
    if @being_attacked_hit_points == 0
      redirect to('/lost')
    end
    erb(:attack)
  end
  get '/lost' do
    erb(:lost)
  end

  run! if app_file == $0
end
