require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "wallace"
end

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]
    "#{params[:item]}"
  end

end
