require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "isomorphicelectrolytesthatcreatevolatilechemicals"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    #raise params.inspect
    session[:item] = params[:item]
    #raise session.inspect
    @session = session
    #raise @session.inspect
    #binding.pry
    "#{@session[:item]}"
  end
end
