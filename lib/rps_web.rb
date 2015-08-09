require 'sinatra/base'
require_relative 'game'

class RpsWeb < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    @player = params[:name]
    session[:name] = @player
    erb :name
  end

  get '/game' do
    erb :game
  end

  get '/single_player' do

  end

  post '/single_player' do

  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
