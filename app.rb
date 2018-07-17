require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "fuwafuwa"
  end
  
  get '/' do
    erb :index
  end
  
  get '/cart' do
    erb :cart
  end
  
  post '/checkout' do
    session["item"] = params[:item]
    @session = session

    redirect '/cart'
  end
end