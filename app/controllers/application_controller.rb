require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "my_application_secret"
  end

  get "/" do
    erb :welcome
  end

  helpers do 
    # keeps track of the current logged in user
    def current_user 
      User.find_by(id: session[:user_id])
    end
  end 

end
