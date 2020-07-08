require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "my_application_secret"
    register Sinatra::Flash
  end

  get "/" do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      @recipes = Recipe.all
      erb :welcome
    end
  end

  helpers do 
    
    def current_user 
      @user ||= User.find_by(id: session[:user_id])
    end
    
    # keeps track of the current logged in user
    def logged_in?
      !!current_user
    end

    def authorized_to_edit?(recipe)
      recipe.user == current_user
    end

    def authorized_to_edit_user?(user)
      user == current_user
    end
  
  end

end
