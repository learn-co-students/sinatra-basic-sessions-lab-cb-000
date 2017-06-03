require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :session
    set :session_secrete, 'secrete'
    set :views, Proc.new {File.join(File.expand_path(File.dirname(__FILE__)), "./views")}
    set :public_dir, Proc.new {File.join(File.expand_path(File.dirname(__FILE__)), "./public")}
  end
  get '/' do
    
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @item = params[:item]
  end
end
