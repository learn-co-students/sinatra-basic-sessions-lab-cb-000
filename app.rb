require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]
    erb :cart
  end
end
