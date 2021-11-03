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
    $player_1 = Player.new(params[:player_one_name])
    $player_2 = Player.new(params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player_1.name
    @player_two_name = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_one_name = $player_1.name
    @player_two_name = $player_2.name
    erb :attack
  end

end
