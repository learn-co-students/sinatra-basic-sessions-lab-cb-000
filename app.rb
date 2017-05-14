require_relative 'config/environment'

class App < Sinatra::Base


get '/' do

  erb :index
end

post '/checkout' do
  @cart = params[:item]

  session[:item] = @cart
  @session = session
  erb :checkout
end


configure do
enable :sessions
set :session_secret, "AliIsa"
end

end

configure do
enable :sessions
set :session_secret, "AliIsa"
end
