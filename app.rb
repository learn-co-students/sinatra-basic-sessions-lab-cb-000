require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    @session = session
    erb :index
  end

  get '/item' do
    @session = session
    erb :item
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]

    redirect '/item'
  end
end
