require 'sinatra/base'
require_relative './lib/player'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect "/play"
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  get '/attacked' do
    @player_2_name = $player_2.name
    erb :attacked
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
