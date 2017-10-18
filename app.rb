require_relative 'config/environment'

class App < Sinatra::Base
  #Enable sessions and set a session secret
configure do
  enable :sessions
  set :session_secret, "secret"
end

# Set up a controller action for GET / that renders index erb
  get '/' do
    erb:index
  end

#Set up a POST /checkout that takes params from the form and adds them to the session hash.
#The key should be "item" and the value should be what the user entered.
# Store session hash in an instance variable that you can access in the views
  post '/checkout' do
    # binding.pry
    @item = params[:item]
    session["item"] = @item
    @session = session

    erb:cart
  end


# Render in cart erb
end
