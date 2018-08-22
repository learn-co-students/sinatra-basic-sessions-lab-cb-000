require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    # Add to session hash
    # binding.pry
    session[:item] = params[:item]
    
    erb :checkout
  end
  
end