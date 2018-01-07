require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "item"
  end

  get '/' do
    resp = Rack::Response.new
    resp.status = 200


    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]
    erb :items
  end
end
