require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    session[:something_good] = "xyzpdq"
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end
end
