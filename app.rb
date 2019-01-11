require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "poopoohead"
  end
  get '/' do
    erb :index
  end
  post '/checkout' do
    session["item"] = params["item"]
    @sesh = session
    erb :show
  end
end
