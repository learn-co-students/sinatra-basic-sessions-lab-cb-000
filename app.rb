require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "555"
end

class App < Sinatra::Base
  get '/' do
    @session = session
    erb :index
  end
  
  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :index
  end
end