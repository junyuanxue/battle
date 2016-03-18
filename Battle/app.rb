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
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    erb :attack
  end

  post '/swap-turn' do
    $game.swap_turn
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
