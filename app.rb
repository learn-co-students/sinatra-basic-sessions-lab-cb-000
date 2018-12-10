require_relative 'config/environment'

class App < Sinatra::Base

  configure :session do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]

    @session
  end
end
