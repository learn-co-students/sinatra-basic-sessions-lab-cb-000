require_relative 'config/environment'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, "Harvey"

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session

    erb :checkout
  end
end
