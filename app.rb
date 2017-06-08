require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    @sessions = session
    erb :index
  end

  post '/checkout' do
    session['item'] = params["item"]
    @sessions = session
    "Your item(s): #{params["item"]}"
  end

end
