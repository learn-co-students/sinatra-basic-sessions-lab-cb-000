require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "alycat"
  end

  get '/' do
    erb :index #set up a get request
  end

  post '/checkout' do
    session[:item] = params[:item] #take the params (item is the key) and add it to the session hash
    @session = session
    erb :checkout
  end
  
end
