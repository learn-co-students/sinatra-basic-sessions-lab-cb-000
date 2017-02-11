require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "huckleberry"
  end

  get '/' do
#    @session = sessions
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    @session = session
    "The item is #{@session["item"]}"
  end

end
