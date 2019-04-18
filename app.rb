require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "241049f449c818a1636431d8d348ef7d9f0590f777c5dbe5c9f5552996eb154e"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    #do stuff with session here
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end

end
