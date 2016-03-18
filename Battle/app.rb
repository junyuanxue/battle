#!/usr/bin/env ruby

require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @current_player = @game.current_player.name
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    @game.swap_turn
    redirect '/game-over' if @game.over?
    erb :attack
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
