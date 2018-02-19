require_relative 'config/environment'

class App < Sinatra::Base

configure do
  enable :sessions
  set :session_secret, 'secret' #goal of this lesson is to save data to the session cookie
end

  get '/' do
    erb :index #set up a get request
  end

  post '/checkout' do
    session[:item] = params[:item] #take the params (item is the key) and add it to the session hash
    @session = session
    erb :checkout
  end

end
