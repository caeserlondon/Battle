require 'sinatra/base'
require "sinatra/reloader" 

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    # $player_one = Player.new(params[:player_one_name])
    # $player_two = Player.new(params[:player_two_name])
    $game = Game.new(Player.new(params[:player_one_name]), Player.new(params[:player_two_name]))
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $game.player_one.name
    @player_two_name = $game.player_two.name
    erb :play
  end

  get '/attack' do
    @player_one = $game.player_one
    @player_two = $game.player_two
    @player_one_name = $game.player_one.name
    @player_two_name = $game.player_two.name
    erb :attack
  end

end
